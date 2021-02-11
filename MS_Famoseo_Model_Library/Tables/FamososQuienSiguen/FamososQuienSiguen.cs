using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Dapper_Orm.Attributes;

namespace MS_Famoseo_Model_Library.Tables.FamososQuienSiguen
{
    public class FamososQuienSiguen
    {
        [Key]
        public int Id { get; set; }
        public int IdFamoso { get; set; }
        public string PerfilInstagramSiguiendo { get; set; }
        public string NombreInstagramSiguiendo { get; set; }
        public bool VerificadoInstagramSiguiendo { get; set; }
        [IgnoreInsert]
        [IgnoreUpdate]
        public DateTime Fecha { get; set; }
    }
}
