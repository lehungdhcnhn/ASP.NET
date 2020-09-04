<%@ Page Title="" Language="C#" MasterPageFile="~/HomeWeb/HomeMaster.Master" AutoEventWireup="true" CodeBehind="HomeDescription.aspx.cs" Inherits="GUI.HomeWeb.HomeDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    </div>
      <div class="col-md-9 col-sm-12 col-xs-12">
       <h2 class="tit_home"><span class="txt_tit_home">TOUR TRONG NƯỚC</span></h2>

    <div class="clearfix"></div>
    <div class="search_content_s">
        <div class="img_search_s"><img src="http://viettour.com.vn/assets/css/img/search.png" alt=""/></div>
        <form method="post" action="http://viettour.com.vn/start">
		
            <div class="right_search_s">
                <div class="thongtintourhot">
                    <span>&nbsp;
                        <span style="color: rgb(0, 51, 102);">Trên <strong>500 tour </strong></span>
                    </span>
                    <a href="">
                        <span><span style="color: rgb(0, 51, 102);">du lịch trong &amp; </span></span>
                    </a>
                    <span>
                        <span style="color: rgb(0, 51, 102);">&nbsp;ngoài nước đang có trên website, chọn<strong> </strong></span>
                    </span>
                    <span style="color: rgb(0, 51, 102);">
                        <strong><a href=""><span>lịch khởi hành</span></a></strong>
                    </span>
                    <span><span style="color: rgb(0, 51, 102);"> để xem chi tiết</span></span>
                </div>
                <div class="clearfix"></div>
               
            </div>
        </form>
    </div>
    <div class="clearfix" style="margin-bottom: 20px"></div>
    <div class="list_banner_home">
        <div class="row">

            <div class="col-md-6 col-sm-6 col-xs-12">

                <a href="http://viettour.com.vn/tour-trong-nuoc" target="_self"><div class="vc_single_image-wrapper   vc_box_border_grey"><img style="padding: 15px 40px" width="100%" height="100" src="http://viettour.com.vn/assets/css/img/unnamed.png" class="vc_single_image-img attachment-full" alt="asdas"></div></a>


            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="md-6" style="margin-right: 45px">
                    <a href="http://viettour.com.vn/lich-khoi-hanh-tour-nuoc-ngoai" target="_self"><div class="vc_single_image-wrapper   vc_box_border_grey"><img width="100%" height="100" src="http://viettour.com.vn/assets/css/img/khoihanhhn1.jpg" class="vc_single_image-img attachment-full" alt="asdas"></div></a>
                </div>
                <div class="md-6" >
                    <a href="http://viettour.com.vn/lich-khoi-hanh-tour-trong-nuoc" target="_self"><div class="vc_single_image-wrapper   vc_box_border_grey"><img width="100%" height="100" src="http://viettour.com.vn/assets/css/img/khoihanhhn.jpg" class="vc_single_image-img attachment-full" alt="asdas"></div></a>
                </div>
            </div>


        </div>
    </div>
    <style>
        .md-6{
            width: 45%;
            float: left;
        }
    </style>
    <div class="clearfix clearfix-10"></div>
    <div class="list_tour_cate">
         <div class="box_tour_cate">
             <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
          <table cellpadding="0" cellspacing="0" class="nav-justified">
                <tr>
                    <td colspan="2">
                        <h3 class="name_tour_cate"><asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("tenTour") %>' NavigateUrl='<%# "HomeDescription.aspx?Id="+Eval("id").ToString() %>'></asp:HyperLink></h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="6" style="width:230px">
                       <%-- <asp:Image CssClass="w_100 img_item_tour" Height="150px" ID="Image1" runat="server" ImageUrl='<%# Eval("thumbnail") %>' />--%>

                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "HomeDescription.aspx?Id="+Eval("id").ToString() %>'
                            ImageUrl='<%# Eval("thumbnail") %>' ToolTip="Xem chi tiết...." CssClass="w_100 img_item_tour" ImageHeight="200px" ImageWidth="200px"
                            ></asp:HyperLink>

                    </td>
                    <td><b>Khởi hành từ:</b>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("khoiHanhTu ") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Thời gian:</b><asp:Label ID="Label2" runat="server" Text='<%# Eval("thoigian") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Giá tuor:</b><asp:Label ID="Label3" runat="server" Text='<%# Eval("gia") %>'></asp:Label>
                    </td>
                </tr>
              <tr>
                    <td><b>Giá Khuyến Mãi:</b><p style="color:red"><asp:Label ID="Label6" runat="server" Text='<%# Eval("gia") %>'></asp:Label></p>
                    </td>
                </tr>
                <tr>
                    <td><b>Khởi hành ngày:</b><asp:Label ID="Label4" runat="server" Text='<%# Eval("khoiHangNgay") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><b>Giới thiệu tour:</b><asp:Label ID="Label5" runat="server" Text='<%# Eval("gioiThieuTuor") %>'></asp:Label>
                    </td>
                </tr>
                
            </table>
            <div class="clearfix"></div>
    <div class="content_detail_tour">
        <div class="tit_detail_tour">
            <span class="text_detail_tour">Chương trình tour</span>
            <div  style="width: 202px">
                
              
                    <button type="submit" class="dattour_dt">
                               <asp:HyperLink ID="HyperLink3"  Text="Đặt tour" runat="server" NavigateUrl='<%# "DatTour.aspx?id="+Eval("id").ToString() %>' >
                             
                             </asp:HyperLink>                    

                    </button> 
               
                
            </div>
        </div>
	</div>
       
  
                    
                    <asp:Label ID="LabelDescription" runat="server" Text='<%# Eval("chuongtrinhtour") %>'></asp:Label>
                   
                    
                    

                
                
<div>
            <br />
<br />

       
     </ItemTemplate>
             </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString12 %>" ></asp:SqlDataSource>
	    </div>
		</div>
   </div>
</asp:Content>
