using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MS_Famoseo_Model_Library.Tables.Famosos
{
    public class Famosos
    {
        public int Id { get; set; }
        public string Famoso { get; set; }
        public string PerfilInstagram { get; set; }
        public string PerfilTwitter { get; set; }
        public int IdGrupo { get; set; }
    }
}
