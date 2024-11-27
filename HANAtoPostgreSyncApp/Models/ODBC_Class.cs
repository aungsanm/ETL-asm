using Microsoft.Win32.SafeHandles;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Data.Odbc;
using System.Data.Common;

namespace HANAtoPostgreSyncApp.Models
{
    public class ODBC_Class : IDisposable
    {
        private string SchemaName;
        private string IPAddress;
        //private string DBType;
        private string UserName;
        private string Password;
        private string ConnestionString;

        public ODBC_Class(string _SchemaName, string _IPAddress, string _UserName, string _Password)
        {
            SchemaName = _SchemaName;
            IPAddress = _IPAddress;

            UserName = _UserName;
            Password = _Password;
            //ConnestionString = "Server=182.18.184.149:30015;UserName=SYSTEM;Password=Sap@1234";
            //ConnestionString = "Server=" + IPAddress + ";UserName=" + UserName + ";Password=" + Password;
            ConnestionString = string.Empty;
            ConnestionString += IntPtr.Size != 8 ? "Driver={HDBODBC32};" : "Driver={HDBODBC};";
            
            ConnestionString += "UID=" + UserName + ";";
            ConnestionString += "PWD=" + Password + ";";
            ConnestionString += "ServerNode=" + _IPAddress + ";";
            ConnestionString += "CS=" + _SchemaName;
            //oDbConnection = DbProviderFactories.GetFactory("System.Data.Odbc").CreateConnection();
            //oDbConnection.ConnectionString = ClsSBOAddOn.strConnectionString;
        }


        OdbcConnection objConnection = new OdbcConnection();
        OdbcDataAdapter objAdpter = new OdbcDataAdapter();
        OdbcCommand objCommand = new OdbcCommand();


        DataSet objDataSet = null;
        DataTable objDataTable = null;

        private const string _RESTAUTS = "ERROR";
        private const string _RSSTATUS = "SUCCESS";

        private int ReturnVal = 0;

        private long ReturnValMax = 0;
        private string ReturnValStr = "";

        //private string SchemaName = System.Configuration.ConfigurationManager.AppSettings["Schema"].ToString();

        bool disposed = false;
        SafeHandle handle = new SafeFileHandle(IntPtr.Zero, true);

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        ~ODBC_Class()
        {
            Dispose(false);
        }
        // Protected implementation of Dispose pattern.
        protected virtual void Dispose(bool disposing)
        {
            if (disposed)
                return;

            if (disposing)
            {
                handle.Dispose();
                // Free any other managed objects here.
                //
            }

            // Free any unmanaged objects here.
            //
            disposed = true;
        }

        #region " Begin Transaction"

        private void BeginTranscation()
        {

            //DbProviderFactory oDbProviderFactory;
            //oDbProviderFactory = DbProviderFactories.GetFactory("System.Data.Odbc");
            //objConnection = new OdbcConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ODBCConnection"].ToString());
            objConnection = new OdbcConnection(ConnestionString);
            objCommand = new OdbcCommand();
            objCommand.CommandTimeout = 1800;
            objCommand.Connection = objConnection;
            objCommand.Connection.Open();
            //objTranscation = objCommand.Connection.BeginTransaction();
            //objCommand.Transaction = objTranscation;
            //int str = GetHashCode();
            //this.Dispose();

        }

        #endregion

        #region " End Transaction "

        public void EndTranscation(string Type)
        {
            try
            {
                if (objCommand.Connection.State == ConnectionState.Open)
                {
                    switch (Type)
                    {
                        case _RESTAUTS:
                            //objTranscation.Rollback();
                            objCommand.Connection.Close();
                            objCommand.Connection.Dispose();
                            objCommand.Dispose();
                            //objTranscation.Dispose();                            
                            break;
                        // break 
                        case _RSSTATUS:
                            //objTranscation.Commit();
                            objCommand.Connection.Close();
                            objCommand.Connection.Dispose();
                            objCommand.Dispose();
                            //objTranscation.Dispose();
                            break;
                            // break 
                    }
                }
            }
            catch (Exception Ex)
            {
            }
        }

        #endregion

        #region " By Procedure Execute  "

        public int ByProcedureExec(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = SchemaName + "." + StoreProcName;//StoreProcName.Replace("Schema", SchemaName);
                if (ParameterCount > 0)
                {
                    string[] ParaMeterNm = new string[ParameterCount + 1];
                    string[] ParaMeterVal = new string[ParameterCount + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    objCommand.CommandType = CommandType.StoredProcedure;
                    for (Pcount = 0; Pcount <= ParameterCount - 1; Pcount++)
                    {
                        objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                    }
                }
                ReturnVal = objCommand.ExecuteNonQuery();
                this.EndTranscation("SUCCESS");
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureExec", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureExec", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                ReturnVal = 0;
            }
            return ReturnVal;
        }

        #endregion

        #region " By Procedure ExecuteScalar  "

        public string ByProcedureExecScalarInString(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                //objCommand.CommandText = StoreProcName.Replace("Schema", SchemaName);
                objCommand.CommandText = SchemaName + "." + StoreProcName;
                if (ParameterCount > 0)
                {
                    string[] ParaMeterNm = new string[ParameterCount + 1];
                    string[] ParaMeterVal = new string[ParameterCount + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    objCommand.CommandType = CommandType.StoredProcedure;
                    for (Pcount = 0; Pcount <= ParameterCount - 1; Pcount++)
                    {
                        if (ParaMeterNm[Pcount] == "?")
                        {
                            objCommand.Parameters.Add(ParaMeterNm[Pcount], OdbcType.NVarChar, 5000).Direction = ParameterDirection.Output;
                        }
                        else
                        {
                            objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                        }
                    }
                }
                if (objCommand.Parameters.Contains("?"))
                {
                    objCommand.ExecuteScalar();
                    ReturnValStr = Convert.ToString(objCommand.Parameters["?"].Value);
                }
                else
                {
                    ReturnValStr = Convert.ToString(objCommand.ExecuteScalar());
                }
                this.EndTranscation("SUCCESS");
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureExecScalarInString", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureExecScalarInString", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                ReturnValStr = "";
            }
            return ReturnValStr;
        }
        public int ByProcedureExecScalar(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                //objCommand.CommandText = StoreProcName.Replace("Schema", SchemaName);
                objCommand.CommandText = SchemaName + "." + StoreProcName;
                if (ParameterCount > 0)
                {
                    string[] ParaMeterNm = new string[ParameterCount + 1];
                    string[] ParaMeterVal = new string[ParameterCount + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    objCommand.CommandType = CommandType.StoredProcedure;
                    for (Pcount = 0; Pcount <= ParameterCount - 1; Pcount++)
                    {
                        objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                    }
                }
                ReturnVal = Convert.ToInt32(objCommand.ExecuteScalar());
                this.EndTranscation("SUCCESS");
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureExecScalar", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureExecScalar", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                ReturnVal = 0;
            }
            return ReturnVal;
        }
        public long ByProcedureExecScalar_LONG(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                //objCommand.CommandText = StoreProcName.Replace("Schema", SchemaName);
                objCommand.CommandText = SchemaName + "." + StoreProcName;
                if (ParameterCount > 0)
                {
                    string[] ParaMeterNm = new string[ParameterCount + 1];
                    string[] ParaMeterVal = new string[ParameterCount + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    objCommand.CommandType = CommandType.StoredProcedure;
                    for (Pcount = 0; Pcount <= ParameterCount - 1; Pcount++)
                    {
                        if (ParaMeterNm[Pcount] == "?")
                        {
                            objCommand.Parameters.Add(ParaMeterNm[Pcount], OdbcType.Int).Direction = ParameterDirection.Output;
                        }
                        else
                        {
                            objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                        }

                    }
                }
                if (objCommand.Parameters.Contains("?"))
                {
                    objCommand.ExecuteScalar();
                    ReturnValMax = Convert.ToInt32(objCommand.Parameters["?"].Value);
                }
                else
                {
                    ReturnValMax = Convert.ToInt64(objCommand.ExecuteScalar());
                }
                this.EndTranscation("SUCCESS");
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureExecScalar_LONG", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureExecScalar_LONG", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                ReturnValMax = 0;
            }
            return ReturnValMax;
        }

        #endregion

        #region " By Procedure Return DataTable "

        public DataTable ByProcedureReturnDataTable(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                if (StoreProcName.Contains("Schema"))
                {
                    StoreProcName = StoreProcName.Replace("Schema", SchemaName);
                }
                else
                {
                    StoreProcName = SchemaName + "." + StoreProcName;
                }
                objCommand.CommandText = StoreProcName;
                int i = ParameterCount;
                if (i > 0)
                {
                    string[] ParaMeterNm = new string[i + 1];
                    string[] ParaMeterVal = new string[i + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    for (Pcount = 0; Pcount <= i - 1; Pcount++)
                    {
                        objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                    }
                }
                objAdpter.SelectCommand = objCommand;
                objDataTable = new DataTable();
                objAdpter.Fill(objDataTable);
                this.EndTranscation("SUCCESS");
                return objDataTable;
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureReturnDataTable", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureReturnDataTable", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                return null;
            }
        }
        #endregion

        #region " By Procedure Return DataTable "

        public List<dynamic> ByProcedureReturnDynamic(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            List<dynamic> result = new List<dynamic>();
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                if (StoreProcName.Contains("Schema"))
                {
                    StoreProcName = StoreProcName.Replace("Schema", SchemaName);
                }
                else
                {
                    StoreProcName = SchemaName + "." + StoreProcName;
                }
                objCommand.CommandText = StoreProcName;
                int i = ParameterCount;
                if (i > 0)
                {
                    string[] ParaMeterNm = new string[i + 1];
                    string[] ParaMeterVal = new string[i + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    for (Pcount = 0; Pcount <= i - 1; Pcount++)
                    {
                        objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                    }
                }
                objAdpter.SelectCommand = objCommand;
                objDataTable = new DataTable();
                objAdpter.Fill(objDataTable);
                //this.EndTranscation("SUCCESS");                
                result.Add(objDataTable);
                return result;
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureReturnDataTable", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureReturnDataTable", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                return null;
            }
        }
        #endregion

        #region " BY Query Return DataTable"
        public DataTable ByQueryReturnDataTable(string SQLQuery)
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.Text;
                objCommand.CommandText = SQLQuery.Replace("Schema", SchemaName);
                objAdpter.SelectCommand = objCommand;
                objDataTable = new DataTable();
                objAdpter.Fill(objDataTable);
                this.EndTranscation("SUCCESS");
                return objDataTable;
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByQueryReturnDataTable", SQLQuery, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByQueryReturnDataTable", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                return null;
            }
        }
        #endregion

        #region " By Procedure Return DataSet "

        public DataSet ByProcedureReturnDataSet(string StoreProcName, int ParameterCount = 0, string ParameterName = "", string ParameterValue = "")
        {
            try
            {
                BeginTranscation();
                objCommand.CommandType = CommandType.StoredProcedure;
                objCommand.CommandText = StoreProcName.Replace("Schema", SchemaName);
                int i = ParameterCount;
                if (i > 0)
                {
                    string[] ParaMeterNm = new string[i + 1];
                    string[] ParaMeterVal = new string[i + 1];
                    int Pcount = 0;
                    ParaMeterNm = ParameterName.Split('|');
                    ParaMeterVal = ParameterValue.Split('|');
                    for (Pcount = 0; Pcount <= i - 1; Pcount++)
                    {
                        objCommand.Parameters.AddWithValue(ParaMeterNm[Pcount], ParaMeterVal[Pcount]);
                    }
                }
                objAdpter.SelectCommand = objCommand;
                objDataSet = new DataSet();
                objAdpter.Fill(objDataSet);
                this.EndTranscation("SUCCESS");
                return objDataSet;
            }
            catch (Exception Ex)
            {
                this.EndTranscation("ERROR");
                //ExceptionGeneral objExceptionGeneral = new ExceptionGeneral();
                //objExceptionGeneral.LogException("ByProcedureReturnDataSet", ParameterValue, System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                //objExceptionGeneral.LogException("ByProcedureReturnDataSet", Ex.Message.ToString(), System.Web.Hosting.HostingEnvironment.MapPath("~/Exception/"));
                return null;
            }
        }
        #endregion

    }
}
