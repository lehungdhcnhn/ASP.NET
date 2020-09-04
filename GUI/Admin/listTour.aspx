<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.master" AutoEventWireup="true" CodeBehind="listTour.aspx.cs" Inherits="GUI.Admin.listTour"  ValidateRequest="false"%>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
 <%@ Register Namespace="CKEditor.NET" Assembly="CKEditor.NET" TagPrefix="CKEditor" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">

    
    <form id="form1" runat="server">
       
 <asp:Button ID="btnAdd" CssClass="btn btn-primary"  runat="server" Text=" Add New" OnClick="btnAdd_Click"  />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1"  Width="1335px" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="khoiHanhTu" HeaderText="Khởi hành từ" SortExpression="khoiHanhTu" />
                <asp:BoundField DataField="thoiGian" HeaderText="Thời gian" SortExpression="thoiGian" />
                <asp:BoundField DataField="khoiHangNgay" HeaderText="Khởi hành ngày" SortExpression="khoiHangNgay" />
                <asp:BoundField DataField="gioiThieuTuor" HeaderText="Giới thiệu" SortExpression="gioiThieuTuor" ItemStyle-Width="200px" ItemStyle-Height="100px" />
<%--                <asp:BoundField DataField="thumbnail" HeaderText="Ảnh nền" SortExpression="thumbnail" />--%>
                <asp:TemplateField HeaderText="Ảnh" ItemStyle-Width="100px">
                    <ItemTemplate>
                        
                        <asp:Image ImageUrl='<%# Eval("thumbnail") %>' runat="server" Height="100px" Width="100px" />

                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="khuyenmai" HeaderText="Khuyến mại" SortExpression="khuyenmai" />
                <asp:BoundField DataField="diemden" HeaderText="Điểm đến" SortExpression="diemden" />
                <%--<asp:BoundField DataField="chuongtrinhtour"  SortExpression="chuongtrinhtour" HeaderStyle-CssClass="hidden" ItemStyle-CssClass="hidden"  />
              --%>  
               <%--  <asp:TemplateField ControlStyle-CssClass="hidden">
                     <ItemTemplate>
                    <asp:Label ID="LabelDescription" CssClass="hidden" runat="server" Text='<%# Eval("chuongtrinhtour") %>'></asp:Label>
                    </ItemTemplate>
                     <EditItemTemplate>
                         <CKEditor:CKEditorControl CssClass="hidden"  ID="descriptionFcke" Height="500" Text='<%# Bind("chuongtrinhtour") %>' runat="server"></CKEditor:CKEditorControl>
                    </EditItemTemplate>
                    

                 </asp:TemplateField>--%>
               <asp:BoundField DataField="Tentour" HeaderText="Tên tour" SortExpression="tentour"  ItemStyle-Width="100px"/>
                
<%--                 <asp:TemplateField HeaderText="Thao tác" >
                                       <ItemTemplate >
                       <asp:LinkButton runat="server" CssClass="btn btn-primary" ID="link" CommandArgument='<%# Eval("id") %>' OnClick="link_Click">edit</asp:LinkButton>
                        <asp:HyperLink runat="server" CssClass="btn btn-primary" ID="link">edit</asp:HyperLink>
                   </ItemTemplate>

                </asp:TemplateField>--%>
                

                <asp:HyperLinkField DataNavigateUrlFields="id" ControlStyle-CssClass="btn btn-primary" DataNavigateUrlFormatString="listAddTour.aspx?id={0}" HeaderText="Sửa" Text="Sửa" />
                

                <asp:TemplateField HeaderText="Xóa" ShowHeader="False">
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="LinkButton1" CssClass="btn btn-danger" Width="70px" OnClientClick="return confirm('Are you sure you want to delete?');"  runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>--%>
                         <asp:LinkButton ID="lnkDelete" runat="server" 
                        OnClientClick="return confirm('Are you sure you want to delete?');" CssClass="btn btn-danger"
                        onclick="lnkDelete_Click" Text="Delete"
                        CommandArgument='<%# Eval("id") %>'
                         ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>   
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString5 %>" ></asp:SqlDataSource>
        
        
        <br />

       <textarea id="cka" style="visibility:hidden"></textarea>
        <asp:HiddenField ID="txtHidden" runat="server" />
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
         <div class="modal-backdrop fade in" style="height:2000px"></div>
        <div class="modal-dialog">  
            <div class="modal-content">  
                <div class="modal-header">  
                    <button type="button" class="close" data-dismiss="modal">×</button>  
                    <h4 class="modal-title" id="myModalLabel">Add Tour</h4>  
                </div>  
                <div class="modal-body">  
                    </div>
                 <div class="form-group">  
                            <label for="Name">Tên Tour:</label>  
                            <asp:TextBox ID="txtTenTour" CssClass="form-control" placeholder="Tên Tour" runat="server"></asp:TextBox>
                        </div>  
                        <div class="form-group">  
                            <label for="EmployeeId">Khởi hành từ: </label>  
                           <%-- <asp:TextBox ID="txtNgayKhoiHanh" CssClass="form-control" placeholder="Khởi hành từ" runat="server" ></asp:TextBox>--%>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Hà Nội" ></asp:ListItem>
                                <asp:ListItem Text="Hồ Chí Minh" ></asp:ListItem>
                            </asp:DropDownList>
                        <%--</div>--%>  
                        <div class="form-group">  
                            <label for="Name">Thời gian:</label>  
                            <asp:TextBox ID="txtThoiGian" CssClass="form-control" placeholder="Thời gian" runat="server"></asp:TextBox>
                        </div>  
                        <div class="form-group">  
                            <label for="Age">Khởi hành ngày: </label>  
                            <asp:TextBox ID="txtKhoiHanhNgay" CssClass="form-control" placeholder="Khởi hành ngày" runat="server"></asp:TextBox>
                        </div>  
                         <div class="form-group">  
                            <label for="Age">Giới thiệu tuor: </label>  
                            <asp:TextBox ID="txtGioiThieuTuor" CssClass="form-control" placeholder="Giời thiệu tuor" runat="server" ></asp:TextBox>
                        </div>  
                        <div class="form-group">  
                            <label for="Age">Hình ảnh: </label>  
                            <asp:FileUpload runat="server" CssClass="form-control" ID="txtThumbnail" />
                        </div>  
                         <div class="form-group">  
                            <label for="Age">Giá khuyến mại: </label>  
                            <asp:TextBox ID="txtGiaKhuyenMai" CssClass="form-control" placeholder="Giá khuyến mại" runat="server"></asp:TextBox>
                        </div> 
                        <div class="form-group">  
                            <label for="Age">Giá Tour: </label>  
                            <asp:TextBox ID="txtGiaTour" CssClass="form-control" placeholder="Giá tour" runat="server"></asp:TextBox>
                        </div> 
                        <div class="form-group">  
                            <label for="Age">Chương trình tour </label>  
                           <textarea id="textckeditorne" name="textckeditorne"></textarea>
                        </div> 
                             <div class="form-group">  
                            <label for="Age">Điểm đến  </label>
                                 <asp:DropDownList ID="drop" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="diemden" DataValueField="ID">
                                 </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString6 %>" SelectCommand="SELECT * FROM [DiemDen]"></asp:SqlDataSource>
                                  
                        </div> 
                      <div class="form-group">  
                            
                            <asp:TextBox ID="txtID" CssClass="form-control" placeholder="ID" Visible="false" runat="server"></asp:TextBox>
                        </div>  
                               </div>  
                <div class="modal-footer">  
                    <asp:Button ID="btnAddOrUpdate" CssClass="btn btn-primary"  runat="server" Text=" Add"   OnClick="btnAddOrUpdateClick_Click" />
                    
                    
                    <button type="button" class="btn btn-default" data-dismiss="modal" runat="server" >Close</button>  
                     
                </div>  
            </div>  
        </div>          
    </div>
      
        </form>
        
          <script>
             
              var editor=CKEDITOR.replace('textckeditorne', {
                    allowedContent: false
              } );
              CKFinder.setupCKEditor(null, '/ckfinder');
              $.fn.modal.Constructor.prototype.enforceFocus = function () {
                  var $modalElement = this.$element;
                  $(document).on('focusin.modal', function (e) {
                      var $parent = $(e.target.parentNode);
                      if ($modalElement[0] !== e.target && !$modalElement.has(e.target).length
                          // add whatever conditions you need here:
                          &&
                          !$parent.hasClass('cke_dialog_ui_input_select') && !$parent.hasClass('cke_dialog_ui_input_text')) {
                          $modalElement.focus()
                      }
                  })
              };
             
             

             
            
                  //instead of $(textarea).val(result);
            
              //CKEDITOR.instances['textckeditorne'].setData(abc);
             
          </script>       
    
</asp:Content>
