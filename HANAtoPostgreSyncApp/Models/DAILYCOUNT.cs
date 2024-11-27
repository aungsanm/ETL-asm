using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace HANAtoPostgreSyncApp.Models
{
    [Table("DAILY_COUNT", Schema = "sapdata")]
    public class DAILYCOUNT
    {
        
        public string TABLENAME { get; set; }
        public int HANACOUNT { get; set; }
        public int PGCOUNT { get; set; }
        public DateTime UPDATEDATE { get; set; }
        [Key]
        public string id { get; set; }
    }
}
