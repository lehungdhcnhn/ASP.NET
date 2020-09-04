using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DiemdenDTO
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        private string code;
        private int status;

        public int Status
        {
            get { return status; }
            set { status = value; }
        }
        private string tenDiemDien;

        public string TenDiemDien
        {
            get { return tenDiemDien; }
            set { tenDiemDien = value; }
        }



        public string Code
        {
            get { return code; }
            set { code = value; }
        }
    }
}
       

