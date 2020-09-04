using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.HomeWeb
{
    public partial class DatTour : System.Web.UI.Page
    {
        OrderDT0 dto = new OrderDT0();
        OrderBUS bus = new OrderBUS();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void insertOrder(object sender, EventArgs e)
        {
            dto.Tourid = int.Parse(Request.QueryString["id"]);
            dto.Hoten = txtHoten.Text;
            dto.Email = Email.Text;
           
            dto.Date = DateTime.Now;
            dto.Note = "";
            bus.insertOrder(dto.Hoten, dto.Tourid, dto.Date, dto.Note, dto.Email);
        }
    }
}