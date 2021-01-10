using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Dapper_Orm.Attributes;

namespace MS_Famoseo_Model_Library.Tables.Grupos
{
    public class Grupos
    {
        [Key]
        public int Id { get; set; }
        public string Descripcion { get; set; }
    }
}
