<%@ Page Title="" Language="C#" MasterPageFile="~/HomeWeb/HomeMaster.Master" AutoEventWireup="true" CodeBehind="HomeWeb.aspx.cs" Inherits="GUI.HomeWeb.HomeWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    </div>
    <h2 class="tit_home"><span class="txt_tit_home">TOUR KHUYẾN MẠI</span></h2>

<div class="clearfix"></div>
<div class="row">
    <div class="owl-carousel slider_tour">
            <div class="item">
                
                <div class="box_tour_km">
                    <asp:DataList ID="DataList1" runat="server">
                       <ItemTemplate>

                       </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
    </div>
 </div>
</asp:Content>
