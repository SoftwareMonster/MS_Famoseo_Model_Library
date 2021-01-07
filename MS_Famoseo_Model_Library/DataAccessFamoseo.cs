using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Famoseo_Model_Library.Tables.Famosos;
using MS_Famoseo_Model_Library.Tables.FamososSiguiendo;
using MS_Famoseo_Model_Library.Tables.Grupos;

namespace MS_Famoseo_Model_Library
{
    public class DataAccessFamoseo
    {
        private Famosos Famosos { get; set; }
        private FamososSiguiendo FamososSiguiendo { get; set; }
        private Grupos Grupos { get; set; }
        public DataAccessFamoseo()
        {
            Famosos = new Famosos();
            FamososSiguiendo = new FamososSiguiendo();
            Grupos = new Grupos();
        }
    }
}
