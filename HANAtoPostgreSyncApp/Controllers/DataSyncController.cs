using HANAtoPostgreSyncApp.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.IO;
using System.Text;

using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using Newtonsoft.Json;
using System.Threading;
using Npgsql.Bulk;
using Npgsql;
using System.Data.Odbc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HANAtoPostgreSyncApp.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class DataSyncController : ControllerBase
    {
        private readonly ILogger<dynamic> _logger;
        private HANADetail hdbCon;
        private ODBC_Class objCon;
        private DataContext db;
        public DataSyncController(ILogger<dynamic> logger, HANADetail _hdbCon, DataContext _db)
        {
            hdbCon = _hdbCon;
            db = _db;
            _logger = logger;
        }


        [HttpGet]
        public LogDetails Migrate()
        {
            LogDetails log = new LogDetails();
            try
            {
                db.Database.Migrate();
                log.Status = "Success";
            }
            catch (Exception ex)
            {
                log.Status = "Error";
                log.Message = ex.Message;
            }

            return log;
        }
        [HttpGet]
        public List<LogDetails> Barcode()
        {
            List<LogDetails> logs = new List<LogDetails>();
            try
            {
                objCon = new ODBC_Class(hdbCon.DatabaseName, hdbCon.Server, hdbCon.UserName, hdbCon.Password);
                db.Database.ExecuteSqlRaw("DELETE FROM sapdata.\"OBCD_NEW\"");
                var items = db.OBCD.AsNoTracking().ToList();
                int offset = 0;
                int limit = 2000;
                DataTable tab = objCon.ByQueryReturnDataTable("SELECT * FROM OBCD ORDER BY \"BcdEntry\" LIMIT " + limit + " OFFSET " + (offset * limit));
                if (tab != null)
                {
                    do
                    {
                        offset++;
                        var obj = JsonConvert.SerializeObject(tab);
                        var itemList = JsonConvert.DeserializeObject<List<OBCD>>(obj);

                        LogDetails log = new LogDetails();
                        try
                        {
                            var uploader = new NpgsqlBulkUploader(db);
                            uploader.Insert(itemList);
                        }
                        catch (System.Exception e)
                        {
                            log.Message = e.Message + "-" + e.InnerException;
                            log.Status = "ERROR";
                            logs.Add(log);
                            db.Add(log);
                            _logger.LogError("3.Error:" + "OBCD" + ":" + e.Message);
                            _logger.LogError("3.Critical Inner Exception:" + "OBCD" + ":" + e.InnerException);
                        }
                        tab = objCon.ByQueryReturnDataTable("SELECT * FROM OBCD ORDER BY \"BcdEntry\" LIMIT " + limit + " OFFSET " + (offset * limit));

                    } while (tab.Rows.Count > 0);

                }
                int PGCOUNT = db.OBCD.Count();
                DataTable dt = new DataTable();
                string tblname = "OBCD";
                DataTable tab1 = objCon.ByQueryReturnDataTable("SELECT COUNT(*) FROM OBCD");
                int HANACOUNT = Convert.ToInt32(tab1.Rows[0][0].ToString());
                dt.Columns.Add("TABLENAME", typeof(string));
                dt.Columns.Add("HANACOUNT", typeof(int));
                dt.Columns.Add("PGCOUNT", typeof(int));
                dt.Columns.Add("UPDATEDATE", typeof(DateTime));
                dt.Rows.Add(tblname, HANACOUNT, PGCOUNT, DateTime.Now);
                var obj1 = JsonConvert.SerializeObject(dt);
                var itemList1 = JsonConvert.DeserializeObject<List<DAILYCOUNT>>(obj1);
                var uploader1 = new NpgsqlBulkUploader(db);
                uploader1.Insert(itemList1);

            }
            catch (Exception ex)
            {
                LogDetails log = new LogDetails();
                log.Status = "ERROR";
                log.Module = "OBCD-MAIN";
                log.Message = ex.Message;
                _logger.LogError("Critical Error:" + log.Module + ":" + ex.Message);
                logs.Add(log);
            }
            finally
            {

            }

            return logs.Where(x => x.Status != "SUCCESS").ToList();
        }
        [HttpGet]
        public List<LogDetails> Manufacturer()
        {
            List<LogDetails> logs = new List<LogDetails>();


            try
            {
                objCon = new ODBC_Class(hdbCon.DatabaseName, hdbCon.Server, hdbCon.UserName, hdbCon.Password);
                db.Database.ExecuteSqlRaw("DELETE FROM sapdata.\"OMRC_NEW\"");
                var items = db.OMRC.AsNoTracking().ToList();
                int offset = 0;
                int limit = 50;
                DataTable tab = objCon.ByQueryReturnDataTable("SELECT * FROM OMRC ORDER BY \"FirmCode\" LIMIT " + limit + " OFFSET " + (offset * limit));
                if (tab != null)
                {
                    do
                    {
                        offset++;
                        var obj = JsonConvert.SerializeObject(tab);
                        var itemList = JsonConvert.DeserializeObject<List<OMRC>>(obj);

                        LogDetails log = new LogDetails();
                        try
                        {
                            var uploader = new NpgsqlBulkUploader(db);
                            // To create a lot of objects
                            uploader.Insert(itemList);
                            //db.BulkInsertAsync(itemList);nsertAsync
                        }
                        catch (System.Exception e)
                        {
                            log.Message = e.Message + "-" + e.InnerException;
                            log.Status = "ERROR";
                            logs.Add(log);
                            db.Add(log);
                            _logger.LogError("3.Error:" + "OMRC" + ":" + e.Message);
                            _logger.LogError("3.Critical Inner Exception:" + "OMRC" + ":" + e.InnerException);
                        }
                        tab = objCon.ByQueryReturnDataTable("SELECT * FROM OMRC ORDER BY \"FirmCode\" LIMIT " + limit + " OFFSET " + (offset * limit));

                    } while (tab.Rows.Count > 0);
                }
            }
            catch (Exception ex)
            {
                LogDetails log = new LogDetails();
                log.Status = "ERROR";
                log.Module = "OMRC-MAIN";
                log.Message = ex.Message;
                _logger.LogError("Critical Error:" + log.Module + ":" + ex.Message);
                logs.Add(log);
            }

            return logs.Where(x => x.Status != "SUCCESS").ToList();
        }

    }
}

