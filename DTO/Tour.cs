using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    class Tour
    {
        private string khoiHanhTu;

        public string KhoiHanhTu
        {
            get { return khoiHanhTu; }
            set { khoiHanhTu = value; }
        }
        private string thoiGian;

        public string ThoiGian
        {
            get { return thoiGian; }
            set { thoiGian = value; }
        }
        private long giaTour;

        public long GiaTour
        {
            get { return giaTour; }
            set { giaTour = value; }
        }
        private string khoiHanhNgay;

        public string KhoiHanhNgay
        {
            get { return khoiHanhNgay; }
            set { khoiHanhNgay = value; }
        }
        private string gioiThieuTour;

        public string GioiThieuTour
        {
            get { return gioiThieuTour; }
            set { gioiThieuTour = value; }
        }
        private string thumbnail;

        public string Thumbnail
        {
            get { return thumbnail; }
            set { thumbnail = value; }
        }
        private string chuongTrinhTour;

        public string ChuongTrinhTour
        {
            get { return chuongTrinhTour; }
            set { chuongTrinhTour = value; }
        }


    }
}
