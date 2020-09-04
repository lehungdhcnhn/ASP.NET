<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="listAddTour.aspx.cs" Inherits="GUI.Admin.listAddTour" ValidateRequest="false" %>
 <%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %> 
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
        <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="Thông tin sửa"> 
                <EditItemTemplate>
                    
                   <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="EmployeeId">Tên Tour: </label>  
                            <asp:TextBox ID="TextBox7" Text='<%# Bind("tenTour") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành từ" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="EmployeeId">Khởi hành từ: </label>  
                            <asp:TextBox ID="txtNgayKhoiHanh" Text='<%# Bind("khoiHanhTu") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành từ" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Name">Thời gian:</label>  
                            <asp:TextBox ID="txtThoiGian" Text='<%# Bind("thoigian") %>' CssClass="form-control col-sm-8" placeholder="Thời gian" runat="server"></asp:TextBox>
                        </div>  
                     <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Khởi hành ngày: </label>  
                            <asp:TextBox ID="txtKhoiHanhNgay"  Text='<%# Bind("khoiHangngay") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành ngày" runat="server"></asp:TextBox>
                        </div> 
                     <div class="form-group col-sm-12">  
                            <label  for="Age">Giới thiệu tuor: </label>  
                            <asp:TextBox ID="txtGioiThieuTuor" Text='<%# Bind("gioiThieuTuor") %>'  CssClass="form-control col-sm-8" placeholder="Giời thiệu tuor" runat="server" ></asp:TextBox>
                        </div>  
                    <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Hình ảnh: </label>  
                            <asp:FileUpload runat="server" CssClass="form-control col-sm-8" ID="txtThumbnail" />
                        </div>  
                     <div class="form-group ">  
                            <label for="Age">Chương trình tour </label>  
                          <CKEditor:CKEditorControl  ID="descriptionFcke" Height="500" Text='<%# Bind("chuongtrinhtour") %>' runat="server"></CKEditor:CKEditorControl>
                        </div> 
                         <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Giá khuyến mại: </label>  
                            <asp:TextBox ID="txtGiaKhuyenMai" CssClass="form-control   col-sm-8" Text='<%# Bind("khuyenmai") %>' placeholder="Giá khuyến mại" runat="server"></asp:TextBox>
                        </div>                    
                    <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="Age">Giá Tour: </label>  
                            <asp:TextBox ID="txtGiaTour" CssClass="form-control col-sm-8"  Text='<%# Bind("gia") %>' placeholder="Giá tour" runat="server"></asp:TextBox>
                        </div> 
                  
                      <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Điểm đến  </label>
                                 <asp:DropDownList ID="drop" Text='<%# Bind("diemdenid") %>'  CssClass="form-control" runat="server" DataSourceID="SqlDataSource8" DataTextField="diemden" DataValueField="ID">
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString14 %>" SelectCommand="SELECT * FROM [DiemDen]"></asp:SqlDataSource>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString6 %>" SelectCommand="SELECT * FROM [DiemDen]"></asp:SqlDataSource>
                                  
                        </div> 
                </EditItemTemplate>
                <ItemTemplate>
                    <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="EmployeeId">Tên Tour: </label>  
                            <asp:Label ID="Label2" Text='<%# Eval("tenTour") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành từ" runat="server" ></asp:Label>
                    </div>
                      <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="EmployeeId">Khởi hành từ: </label>  
                            <asp:Label ID="Label1" Text='<%# Eval("khoiHanhTu") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành từ" runat="server" ></asp:Label>
                    </div>
                    <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="EmployeeId">Khởi hành từ: </label>  
                            <asp:Label ID="TextBox1" Text='<%# Eval("khoiHanhTu") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành từ" runat="server" ></asp:Label>
                    </div>
                    <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Name">Thời gian:</label>  
                            <asp:Label ID="TextBox2" Text='<%# Eval("thoigian") %>' CssClass="form-control col-sm-8" placeholder="Thời gian" runat="server"></asp:Label>
                        </div>  
                     <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Khởi hành ngày: </label>  
                            <asp:Label ID="TextBox3"  Text='<%# Eval("khoiHangngay") %>' CssClass="form-control col-sm-8" placeholder="Khởi hành ngày" runat="server"></asp:Label>
                        </div> 
                     <div class="form-group col-sm-12">  
                            <label  for="Age">Giới thiệu tuor: </label>  
                            <asp:Label ID="TextBox4" Text='<%# Eval("gioiThieuTuor") %>'  CssClass="form-control col-sm-8" placeholder="Giời thiệu tuor" runat="server" ></asp:Label>
                        </div>  
                    <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Hình ảnh: </label>  
                            <asp:Label runat="server" CssClass="form-control col-sm-8" ID="FileUpload1" />
                        </div>  
                     <div class="form-group ">  
                            <label for="Age">Chương trình tour </label>  
                          <CKEditor:CKEditorControl  ID="CKEditorControl1" Height="500" Text='<%# Eval("chuongtrinhtour") %>' runat="server"></CKEditor:CKEditorControl>
                        </div> 
                         <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Giá khuyến mại: </label>  
                            <asp:Label ID="TextBox5" CssClass="form-control   col-sm-8" Text='<%# Eval("khuyenmai") %>' placeholder="Giá khuyến mại" runat="server"></asp:Label>
                        </div>                    
                    <div class="form-group col-sm-12" >  
                            <label class="col-sm-4" for="Age">Giá Tour: </label>  
                            <asp:Label ID="TextBox6" CssClass="form-control col-sm-8"  Text='<%# Eval("gia") %>' placeholder="Giá tour" runat="server"></asp:Label>
                        </div> 
                  <div class="form-group col-sm-12">  
                            <label class="col-sm-4" for="Age">Điểm đến  </label>
                                 <asp:DropDownList ID="DropDownList1" Text='<%# Eval("diemdenid") %>' CssClass="form-control" runat="server" DataSourceID="SqlDataSource5" DataTextField="diemden" DataValueField="ID" >
                                 </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString13 %>" SelectCommand="SELECT * FROM [DiemDen]"></asp:SqlDataSource>
                                
                                  
                        </div> 
                    <div style="float:right" >  
                    
                     
                </div>
                </ItemTemplate>
                </asp:TemplateField>
                 <asp:CommandField ItemStyle-CssClass="btn btn-primary" CancelText="Hủy" EditText="Sửa" HeaderText="Sửa chữa" 
                ShowEditButton="True" >
                    <ItemStyle CssClass="btn btn-primary"></ItemStyle>
            </asp:CommandField>
             </Columns>
    </asp:GridView>
      
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString11 %>"></asp:SqlDataSource>
      
            </form>
   
</asp:Content>
