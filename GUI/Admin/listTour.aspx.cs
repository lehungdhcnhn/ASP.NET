using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.Admin
{
    public partial class listTour : System.Web.UI.Page
    {
        TourDTO dto = new TourDTO();
        TourBUS bus = new TourBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Hienthi();
            }
            

        }

        private void SaveFileUpload()
        {
            string strPathFile;
            if (txtThumbnail.FileName != "")
            {
                strPathFile = Server.MapPath("../Image" + txtThumbnail.FileName);
                txtThumbnail.PostedFile.SaveAs(strPathFile);
            }
        }
        protected void FileBrowser1_Load(object sender, EventArgs e)
        {
            //FileBrowser1 = new CKFinder.FileBrowser();
            //FileBrowser1.BasePath = "/ckfinder/";
            //FileBrowser1.SetupCKEditor(txtChuongtri);
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Button linkbutton = (Button)sender;
            txtID.Text = "";
            txtKhoiHanhNgay.Text = "";
            DropDownList1.Text = "";
            txtThoiGian.Text = "";
            txtTenTour.Text = "";
            txtGiaKhuyenMai.Text = "";
            txtGiaTour.Text = "";
            txtGioiThieuTuor.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);
        }
        //protected void link_Click(object sender, EventArgs e)
        //{
        //    LinkButton linkbutton = (LinkButton)sender;
        //    GridViewRow row = (GridViewRow)linkbutton.NamingContainer;
        //    txtID.Text = row.Cells[0].Text;
        //    txtKhoiHanhNgay.Text = row.Cells[1].Text;
        //    txtNgayKhoiHanh.Text = row.Cells[3].Text;
        //    txtThoiGian.Text = row.Cells[2].Text;
        //    txtGioiThieuTuor.Text = row.Cells[4].Text;
        //    txtGiaKhuyenMai.Text=row.Cells[6].Text;
        //    txtHidden.Value = (row.Cells[8].Text);

        //    drop.ClearSelection(); //making sure the previous selection has been cleared
        //    drop.Items.FindByValue(row.Cells[9].Text).Selected = true;

        //    //textckeditorne.Value = row.Cells[8].Text;
        //    ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#myModal').modal()", true);//show the modal
        //}
        protected void btnAddOrUpdateClick_Click(object sender, EventArgs e)
        {
            dto.DiemDenId =int.Parse( drop.SelectedValue);
            dto.GiaTour = txtGiaTour.Text;
            dto.GioiThieuTour = txtGioiThieuTuor.Text;
            dto.KhuyenMai = txtGiaKhuyenMai.Text;
            dto.ThoiGian = txtThoiGian.Text;
            dto.Thumbnail = txtThumbnail.FileName;
            dto.KhoiHanhTu = DropDownList1.Text;
            dto.KhoiHanhNgay = txtKhoiHanhNgay.Text;
            dto.TenTour = txtTenTour.Text;
            string editorContents = "";
            if (Request.Form["textckeditorne"] != null)
            {
                //Grab the contents
                editorContents = Request.Form["textckeditorne"];

                //Perform your Database Save here
            }
            dto.ChuongtrinhTour = editorContents;
            if (!txtID.Text.Equals(""))
            {
                dto.Id = int.Parse(txtID.Text);
                SaveFileUpload();
                bus.updateDiemDen(dto.KhoiHanhTu, dto.ThoiGian, dto.GiaTour, dto.KhoiHanhNgay, dto.GioiThieuTour, dto.Thumbnail, dto.ChuongtrinhTour, dto.KhuyenMai, dto.DiemDenId, dto.Id,dto.TenTour);
                Hienthi();
            }
            else
            {
                SaveFileUpload();
                bus.insertTour(dto.KhoiHanhTu, dto.ThoiGian,  dto.KhoiHanhNgay, dto.GioiThieuTour, dto.Thumbnail, dto.ChuongtrinhTour, dto.KhuyenMai, dto.DiemDenId,dto.GiaTour,dto.TenTour);
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
        public void Hienthi()
        {
            SqlDataSource1.SelectCommand = "SELECT Tour.*, diemden  FROM Tour inner join diemden on tour.diemdenid = diemden.id";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}