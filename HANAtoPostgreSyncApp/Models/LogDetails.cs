using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HANAtoPostgreSyncApp.Models
{
    [Table("LOG", Schema = "sapdata")]
    public class LogDetails
    {
        public LogDetails()
        {
            ExceTime = DateTime.Now;
        }
        [Key]
        public int ID { get; set; }
        public string Module { get; set; }
        public string KeyCalue { get; set; }
        public string Message { get; set; }
        public string Status { get; set; }
        public DateTime ExceTime { get; set; }
    }
}
