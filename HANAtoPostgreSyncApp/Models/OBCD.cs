using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HANAtoPostgreSyncApp.Models
{
    [Table("OBCD_NEW", Schema = "sapdata")]
    public class OBCD
    {
        [Key]
        public int BcdEntry { get; set; }
        public string BcdCode { get; set; }
        public string BcdName { get; set; }
        public string ItemCode { get; set; }
        public int? UomEntry { get; set; }
        public string DataSource { get; set; }
        public int? UserSign { get; set; }
        public int? UserSign2 { get; set; }
        public DateTime? UpdateDate { get; set; }
        public DateTime? CreateDate { get; set; }

    }
}
