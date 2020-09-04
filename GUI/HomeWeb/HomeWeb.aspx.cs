using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.HomeWeb
{
    public partial class HomeWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT top 3 tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where  DATALENGTH(khuyenmai)>0 ";
            SqlDataSource2.SelectCommand="select tour.khoiHanhTu,tour.thumbnail,tour.tenTour,tour.thoiGian,tour.gia,tour.khoiHangNgay,tour.gioiThieuTuor,tourid,count(tourid)as col from tour inner join orderTour on tour.id=orderTour.tourid group by tour.khoiHanhTu,tour.thumbnail,tour.tenTour,tour.thoiGian,tour.gia,tour.khoiHangNgay,tour.gioiThieuTuor,tourid order by col desc";
        }
    }
}