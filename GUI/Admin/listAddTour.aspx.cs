using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI.Admin
{

    public partial class listAddTour : System.Web.UI.Page
    {
        TourDTO dto = new TourDTO();
        string ma = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ma = Request.QueryString["id"];
            SqlDataSource1.SelectCommand = "SELECT Tour.*, diemden  FROM Tour inner join diemden on tour.diemdenid = diemden.id where Tour.id='" + ma + "'";
            SqlDataSource1.UpdateCommand = "update tour set khoihanhtu=@khoihanhtu, thoigian=@thoigian,gia=@gia,khoihangngay=@khoihangngay,gioiThieuTuor=@gioiThieuTuor,chuongtrinhtour=@chuongtrinhtour,khuyenmai=@khuyenmai, diemDenId=@diemDenId,tenTour=@tenTour where id='" + ma + "'";
        }

    

       
        
    }
}