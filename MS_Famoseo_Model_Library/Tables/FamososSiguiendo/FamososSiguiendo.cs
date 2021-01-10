using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Dapper_Orm.Attributes;

namespace MS_Famoseo_Model_Library.Tables.FamososSiguiendo
{
    public class FamososSiguiendo
    {
        [Key]
        public int Id { get; set; }
        public int IdFamoso { get; set; }
        public int TotalSiguiendo { get; set; }
        [IgnoreInsert]
        public DateTime Fecha { get; set; }
    }
}
