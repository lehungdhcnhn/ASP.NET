using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TourDTO
    {

        private string khoiHanhTu;
        private string thoiGian;
        private string giaTour;
        private string khoiHanhNgay;
        private string gioiThieuTour;
        private string thumbnail;
        private string chuongtrinhTour;
        private string khuyenMai;
        private int diemDenId;
        private int id;
        private string tenTour;

        public string TenTour
        {
            get { return tenTour; }
            set { tenTour = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string KhoiHanhTu
        {
            get { return khoiHanhTu; }
            set { khoiHanhTu = value; }
        }
       

        public string ThoiGian
        {
            get { return thoiGian; }
            set { thoiGian = value; }
        }
        

        public string GiaTour
        {
            get { return giaTour; }
            set { giaTour = value; }
        }
       

        public string KhoiHanhNgay
        {
            get { return khoiHanhNgay; }
            set { khoiHanhNgay = value; }
        }
       

        public string GioiThieuTour
        {
            get { return gioiThieuTour; }
            set { gioiThieuTour = value; }
        }
       

        public string Thumbnail
        {
            get { return thumbnail; }
            set { thumbnail = value; }
        }
       

        public string ChuongtrinhTour
        {
            get { return chuongtrinhTour; }
            set { chuongtrinhTour = value; }
        }
        

        public string KhuyenMai
        {
            get { return khuyenMai; }
            set { khuyenMai = value; }
        }
        

        public int DiemDenId
        {
            get { return diemDenId; }
            set { diemDenId = value; }
        }

        
       
    }
}
