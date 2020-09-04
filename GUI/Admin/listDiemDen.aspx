<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.Master" AutoEventWireup="true" CodeBehind="listDiemDen.aspx.cs" Inherits="GUI.listDiemDen" ValidateRequest="false"  %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
   
    <form id="form1" runat="server">
        <asp:Button ID="btnAdd" CssClass="btn btn-primary"  runat="server" Text=" Add New" OnClick="btnAdd_Click"  />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"  Width="1335px" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="code" HeaderText="Mã điểm đến" SortExpression="code" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="diemden" HeaderText="Tên điểm đến" SortExpression="diemden" />
                <asp:TemplateField HeaderText="Thao tác" >
                                       <ItemTemplate >
                        <asp:LinkButton runat="server" CssClass="btn btn-primary" ID="link" CommandArgument='<%# Eval("id") %>' OnClick="link_Click">edit</asp:LinkButton>
                   </ItemTemplate>

                </asp:TemplateField>
                

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebTourConnectionString2 %>" ></asp:SqlDataSource>
        
        <br />
    
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">  
        <div class="modal-dialog">  
            <div class="modal-content">  
                <div class="modal-header">  
                    <button type="button" class="close" data-dismiss="modal">×</button>  
                    <h4 class="modal-title" id="myModalLabel">Add Employee</h4>  
                </div>  
                <div class="modal-body">  
                    <form>  
                        <div class="form-group">  
                            <label for="EmployeeId">Mã điểm đến</label>  
                            <asp:TextBox ID="txtCode" CssClass="form-control" placeholder="Tài khoản" runat="server" OnTextChanged="txtCode_TextChanged"></asp:TextBox>
                            
                        <%--</div>--%>  
                        <div class="form-group">  
                            <label for="Name">Phạm vi</label>  
                            <%--<asp:TextBox ID="txtStatus" CssClass="form-control" placeholder="Trong nước hay ngoài nước" runat="server"></asp:TextBox>--%>
                            <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                <asp:ListItem Text="Trong nước" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Nước Ngoài" Value="1"></asp:ListItem>
                            </asp:DropDownList>

                        </div>  
                        <div class="form-group">  
                            <label for="Age">Tên điểm đến</label>  
                            <asp:TextBox ID="txtDiemDen" CssClass="form-control" placeholder="Tên điểm đến" runat="server"></asp:TextBox>
                        </div>  
                      <div class="form-group">  
                            
                            <asp:TextBox ID="txtID" CssClass="form-control" placeholder="ID" Visible="false" runat="server"></asp:TextBox>
                        </div>  
                    </form>  
                </div>  
                <div class="modal-footer">  
                    <asp:Button ID="btnAddOrUpdate" CssClass="btn btn-primary"  runat="server" Text=" Add" OnClick="btnAddOrUpdateClick_Click"  />
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                </div>  
            </div>  
        </div>          
    </div>
        </form>
</asp:Content>
