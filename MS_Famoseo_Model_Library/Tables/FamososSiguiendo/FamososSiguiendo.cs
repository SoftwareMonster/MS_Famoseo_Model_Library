using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MS_Famoseo_Model_Library.Tables.FamososSiguiendo
{
    public class FamososSiguiendo
    {
        public int Id { get; set; }
        public int IdFamoso { get; set; }
        public int TotalSiguiendo { get; set; }
        public DateTime Fecha { get; set; }
    }
}
