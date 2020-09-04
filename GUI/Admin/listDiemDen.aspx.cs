using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI
{
    public partial class listDiemDen : System.Web.UI.Page
    {
        DiemdenDTO dto = new DiemdenDTO();
        DiemdenBUS bus = new DiemdenBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Hienthi();
            }
            
           
        }
        public void Hienthi()
        {
    
                SqlDataSource1.SelectCommand = "SELECT * FROM [DiemDen]";
        }
        protected void link_Click(object sender, EventArgs e)
        {
            LinkButton linkbutton = (LinkButton)sender;  
            GridViewRow row = (GridViewRow)linkbutton.NamingContainer;
            txtID.Text = row.Cells[0].Text;
            txtCode.Text = row.Cells[1].Text;  
            DropDownList1.Text = row.Cells[2].Text;
            txtDiemDen.Text = row.Cells[3].Text;
            
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);//show the modal
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Button linkbutton = (Button)sender;
            txtCode.Text = "";
            DropDownList1.Text = "";
            txtDiemDen.Text = "";
            txtID.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);
        }
        protected void btnAddOrUpdateClick_Click(object sender, EventArgs e)
        {

            dto.Code = txtCode.Text;
            dto.Status = int.Parse(DropDownList1.SelectedValue);
            dto.TenDiemDien = txtDiemDen.Text;
            if (!txtID.Text.Equals(""))
            {
                dto.Id = int.Parse(txtID.Text);
                bus.updateDiemDen(dto.Code, dto.Status, dto.TenDiemDien, dto.Id);
                Hienthi();
            }
            else
            {
                bus.insertDiemDen(dto.Code, dto.Status, dto.TenDiemDien);
                Hienthi();
            }
        }
        public void lnkDelete_Click(object sender, EventArgs e)
        {
            LinkButton linkbutton = (LinkButton)sender;
            GridViewRow row = (GridViewRow)linkbutton.NamingContainer;
            txtID.Text = row.Cells[0].Text;
            dto.Id = int.Parse(txtID.Text);
            bus.deleteDiemDen(dto.Id);
            Hienthi();
        }

        protected void txtCode_TextChanged(object sender, EventArgs e)
        {

        }
    }
}