namespace HANAtoPostgreSyncApp.Models
{
    public class HANADetail
    {
     
        public string Server { get; set; }        
        public string DatabaseName { get; set; }        
        public string UserName { get; set; }        
        public string Password { get; set; }
        public string MasterDataSyncTime { get; set; }
        public string DocumentDataSyncTime { get; set; }
    }
}
