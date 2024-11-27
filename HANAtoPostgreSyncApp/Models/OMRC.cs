using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace HANAtoPostgreSyncApp.Models
{
    [Table("OMRC_NEW", Schema = "sapdata")]
    public class OMRC
    {
        [Key]
        public int FirmCode { get; set; }
        public string FirmName { get; set; }
        public string DataSource { get; set; }
        public int UserSign { get; set; }
    }
}
