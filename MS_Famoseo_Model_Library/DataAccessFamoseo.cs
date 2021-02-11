using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MS_Famoseo_Model_Library.Tables.Famosos;
using MS_Famoseo_Model_Library.Tables.FamososQuienSiguen;
using MS_Famoseo_Model_Library.Tables.FamososSeguidores;
using MS_Famoseo_Model_Library.Tables.FamososSiguiendo;
using MS_Famoseo_Model_Library.Tables.Grupos;

namespace MS_Famoseo_Model_Library
{
    public class DataAccessFamoseo
    {
        public Famosos Famosos { get; set; }
        public FamososSiguiendo FamososSiguiendo { get; set; }
        public FamososSeguidores FamososSeguidores { get; set; }
        public Grupos Grupos { get; set; }
        public FamososQuienSiguen FamososQuienSiguen { get; set; }
        public DataAccessFamoseo()
        {
            Famosos = new Famosos();
            FamososSiguiendo = new FamososSiguiendo();
            FamososSeguidores = new FamososSeguidores();
            Grupos = new Grupos();
            FamososQuienSiguen = new FamososQuienSiguen();
        }
    }
}
