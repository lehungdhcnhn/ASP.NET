using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI.HomeWeb
{
    public partial class Seach : System.Web.UI.Page
    {
        TourBUS bus = new TourBUS();

        protected void Page_Load(object sender, EventArgs e)
        {
            string diemden = Request.QueryString["diemden"];
            lblOnline.Text = Application.Contents["SoNguoiTruyCap"].ToString();
            lblSumOnline.Text = Application.Contents["TongTruyCap"].ToString();
            string key = Request.QueryString["Key"];
            if (key == null || key == "")
            {
                SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where diemden=N'" + diemden + "'";
            }
            else
            {
                SqlDataSource1.SelectCommand = "select Tour.*, diemden from tour inner join diemden on diemden.id=tour.diemdenid where Tour.tenTour like N'%" + key + "%' or Tour.khoiHanhTu like N'%" + key + "%' or thoiGian like N'%" + key + "%'  or khoiHangNgay like N'%" + key + "%' or gioiThieuTuor like N'%" + key + "%' or thumbnail like N'%" + key + "%' or chuongtrinhtour like N'%" + key + "%' or khuyenmai like N'%" + key + "%' or gia like N'%" + key + "%'   ";
            }
        }



       
    }
}