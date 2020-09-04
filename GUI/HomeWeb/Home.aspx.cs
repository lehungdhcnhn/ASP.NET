using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI.HomeWeb
{
    public partial class Home : System.Web.UI.Page
    {
        TourBUS bus = new TourBUS();
        string diemdi = "";
            string diemden = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOnline.Text = Application.Contents["SoNguoiTruyCap"].ToString();
            lblSumOnline.Text = Application.Contents["TongTruyCap"].ToString();
            SqlDataSource1.SelectCommand = "SELECT  tour.*, diemden from tour inner join diemden on tour.diemdenid=diemden.id where Status=0";
            
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
       
        public void SeachTourNe(object sender, EventArgs e)
        {
            
              
            diemdi = dropStart.SelectedValue;
           

            SqlDataSource1.SelectCommand = "select Tour.*, diemden from tour inner join diemden on diemden.id=tour.diemdenid where khoiHanhTu=N'"+diemdi+"' and diemden=N'"+diemden+"'";
        }

        protected void dropEnd_SelectedIndexChanged(object sender, EventArgs e)
        {
            var diemdenne = dropEnd.SelectedValue;
            Response.Write(diemdenne);
        }

      
    }
}