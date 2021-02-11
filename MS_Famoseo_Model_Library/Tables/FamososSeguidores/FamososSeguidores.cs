using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Dapper_Orm.Attributes;

namespace MS_Famoseo_Model_Library.Tables.FamososSeguidores
{
    public class FamososSeguidores
    {
        [Key]
        public int Id { get; set; }
        public int IdFamoso { get; set; }
        public int TotalSeguidores { get; set; }
        [IgnoreInsert]
        [IgnoreUpdate]
        public DateTime Fecha { get; set; }
    }
}
