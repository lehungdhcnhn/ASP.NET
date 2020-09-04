<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="GUI.HomeWeb.Search" %>
<div class="input-group col-sm-5 pull-right">
                                <asp:TextBox CssClass="form-control" ID="txtkey" runat="server" placeholder="Nhập từ khóa..."></asp:TextBox>
                                <span class="input-group-btn">
                                    
                                    <asp:Button runat="server"   onclick="SearchPro" Text="Tìm kiếm" CssClass="btn btn-default"></asp:Button>
                                </span>
                            </div>