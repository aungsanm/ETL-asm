using HANAtoPostgreSyncApp.Controllers;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace HANAtoPostgreSyncApp.Models
{
    public class SyncService : IHostedService, IDisposable
    {
        private readonly ILogger<dynamic> _logger;
        private Timer _timerMasterData;
        //private Timer _timerTransactionData;
        private IServiceProvider _services;
        private IConfiguration iConfig;
        private int executionCount = 0;
        public IServiceScopeFactory _serviceScopeFactory;

        private HANADetail hdbCon;
        private ODBC_Class objCon;
        DataContext _db;

        public SyncService(ILogger<dynamic> logger, IServiceProvider services, IConfiguration configuration, IServiceScopeFactory serviceScopeFactory, HANADetail _hdbCon)
        {
            _logger = logger;
            _services = services;
            iConfig = configuration;
            _serviceScopeFactory = serviceScopeFactory;
            hdbCon = _hdbCon;
            //db = _db;
        }

        public void Dispose()
        {
            _timerMasterData?.Dispose();
        }

        public Task StartAsync(CancellationToken cancellationToken)
        {
            _logger.LogInformation(" Background Service is starting." + hdbCon.MasterDataSyncTime);
            _logger.LogInformation(" Delay Master Data Time: " + getJobRunDelay(hdbCon.MasterDataSyncTime).ToString());
            //_logger.LogInformation(" Delay Document Data Time: " + getJobRunDelay(hdbCon.DocumentDataSyncTime).ToString());
            //_timerMasterData = new Timer(DoWork, null, getJobRunDelay(hdbCon.DocumentDataSyncTime), new TimeSpan(24, 0, 0));
            _timerMasterData = new Timer(DoWork, null, TimeSpan.Zero, TimeSpan.FromHours(1));
            //_timerTransactionData = new Timer(SyncTransaction, null, getJobRunDelay(hdbCon.DocumentDataSyncTime), new TimeSpan(24, 0, 0));

            //_timer = new Timer(DoWork, null, TimeSpan.Zero, TimeSpan.FromHours(1));
            return Task.CompletedTask;
        }

        private static TimeSpan getScheduledParsedTime(string jobStartTime)
        {
            string[] formats = { @"hh\:mm\:ss", "hh\\:mm" };
            //string jobStartTime = "07:10";
            TimeSpan.TryParseExact(jobStartTime, formats, CultureInfo.InvariantCulture, out TimeSpan ScheduledTimespan);
            return ScheduledTimespan;
        }

        private static TimeSpan getJobRunDelay(string jobStartTime)
        {
            TimeSpan scheduledParsedTime = getScheduledParsedTime(jobStartTime);
            TimeSpan curentTimeOftheDay = TimeSpan.Parse(DateTime.Now.TimeOfDay.ToString("hh\\:mm"));
            TimeSpan delayTime = scheduledParsedTime >= curentTimeOftheDay
                ? scheduledParsedTime - curentTimeOftheDay
                : new TimeSpan(24, 0, 0) - curentTimeOftheDay + scheduledParsedTime;

            return delayTime;
        }
        //private void SyncTransaction(object state)
        //{
        //    _logger.LogInformation(" Transaction Service Processing Startted " + DateTime.Today.ToString());
        //    using (var scope = _serviceScopeFactory.CreateScope())
        //    {
        //        _logger.LogInformation(" Get Scopped");
        //        var db = scope.ServiceProvider.GetRequiredService<DataContext>();
        //        _logger.LogInformation(" Get DB");
        //        DataSyncController sync = new DataSyncController(_logger, hdbCon, db);
        //        _logger.LogInformation(" Variable Initialised");
        //        sync.Invoices();
        //    }
        //}

        private void DoWork(object state)
            {
            var count = Interlocked.Increment(ref executionCount);
            _logger.LogInformation("1.Timed Hosted Service is working. Count: {Count}", count);


            //_logger.LogWarning(" 2.Background Service Processing Startted " + DateTime.Today.ToString());
            //_logger.LogError(" 3.Background Service Processing Startted " + DateTime.Today.ToString());

            //var scope = _serviceScopeFactory.CreateScope();
            //var db = scope.ServiceProvider.GetRequiredService<DataContext>();
            //_db = db;
            //_logger.LogError(" Get DB");
            //_logger.LogInformation(" Get Scopped");
            ////if (DateTime.Today.Hour == 16)
            //{
            //    _logger.LogError("Time Execution Started");

            //    _logger.LogInformation(" Master Data Started");


            //    DataSyncController sync = new DataSyncController(_logger, hdbCon, db);
            //    _logger.LogInformation(" Variable Initialised");
            //    _logger.LogInformation(JsonConvert.SerializeObject(sync.UnitofMeasure()));
            //    _logger.LogInformation(" OUOM Completed");
            //    //sync.UnitofMeasureGroup();
            //    //_logger.LogInformation(" OUGP Completed");
            //    //sync.UnitofMeasureGroup1();
            //    //_logger.LogInformation(" UGP1 Completed");                    
            //    //sync.Items();
            //    //_logger.LogInformation(" OITM Completed");
            //    //sync.Items1();
            //    //_logger.LogInformation(" ITM1 Completed");
            //    //sync.Items9();
            //    //_logger.LogInformation(" ITM9 Completed");
            //    //sync.Warehouses();
            //    //_logger.LogInformation(" OWHS Completed");
            //    //sync.WarehouseStock();
            //    //_logger.LogInformation(" OITW Completed");

            //    //sync.PriceList();
            //    //_logger.LogInformation(" OPLN Completed");
            //    //sync.BusinessPartner();
            //    //_logger.LogInformation(" OCRD Completed");
            //    //sync.CardGroup();
            //    //_logger.LogInformation(" OCRG Completed");
            //    //sync.BusinessPartnerAddress();
            //    //_logger.LogInformation(" CRD1 Completed");
            //    sync.ItemGroups();
            //    _logger.LogInformation(" OITB Completed");
            //}



            //using (var scope = _serviceScopeFactory.CreateScope())
            //{
            //    _logger.LogInformation(" Get Scopped");
            //    if (DateTime.Today.Hour == 1)
            //    {
            //        _logger.LogInformation(" Master Data Started");
            //        var db = scope.ServiceProvider.GetRequiredService<DataContext>();
            //        _logger.LogInformation(" Get DB");
            //        DataSyncController sync = new DataSyncController(_logger, hdbCon, db);
            //        _logger.LogInformation(" Variable Initialised");
            //        sync.UnitofMeasure();
            //        _logger.LogInformation(" OUOM Completed");
            //        sync.UnitofMeasureGroup();
            //        _logger.LogInformation(" OUGP Completed");
            //        sync.UnitofMeasureGroup1();
            //        _logger.LogInformation(" UGP1 Completed");

            //        sync.Items();
            //        _logger.LogInformation(" OITM Completed");
            //        sync.Items1();
            //        _logger.LogInformation(" ITM1 Completed");
            //        sync.Items9();
            //        _logger.LogInformation(" ITM9 Completed");
            //        sync.Warehouses();
            //        _logger.LogInformation(" OWHS Completed");
            //        sync.WarehouseStock();
            //        _logger.LogInformation(" OITW Completed");
            //    }
            //    else
            //    {
            //        _logger.LogInformation(" Transaction Data Started");
            //        var db = scope.ServiceProvider.GetRequiredService<DataContext>();
            //        _logger.LogInformation(" Get DB");
            //        DataSyncController sync = new DataSyncController(_logger, hdbCon, db);
            //        _logger.LogInformation(" Variable Initialised");
            //        //sync.Invoices();
            //        _logger.LogInformation(" Invoice Completed");
            //        //sync.CreditNote();
            //        _logger.LogInformation(" CreditNote Completed");
            //    }


            //}
            //DataSyncController sync = new DataSyncController(hdbCon, db);
        }
        public Task StopAsync(CancellationToken cancellationToken)
        {
            _logger.LogInformation("Background Service is stopping.");
            _timerMasterData?.Change(Timeout.Infinite, 0);
            //_timerTransactionData?.Change(Timeout.Infinite, 0);
            return Task.CompletedTask;
        }

    }
}
