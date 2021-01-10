using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Dapper_Orm.Attributes;

namespace MS_Famoseo_Model_Library.Tables.Famosos
{
    public class Famosos
    {
        [Key]
        public int Id { get; set; }
        public string Famoso { get; set; }
        public string PerfilInstagram { get; set; }
        public string PerfilTwitter { get; set; }
        public int IdGrupo { get; set; }
    }
}
