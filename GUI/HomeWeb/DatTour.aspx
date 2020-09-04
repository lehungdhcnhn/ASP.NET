<%@ Page Title="" Language="C#" MasterPageFile="~/HomeWeb/HomeMaster.Master" AutoEventWireup="true" CodeBehind="DatTour.aspx.cs" Inherits="GUI.HomeWeb.DatTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="main_body" runat="server">
    </div>
    <div class="col-md-9 col-sm-12 col-xs-12">
    <h2 class="tit_home"><span class="txt_tit_home">Đặt tour</span></h2>
<div class="clearfix"></div>
<div class="main_booking booktour-form">
<h2 class="name_tour_book"><asp:Label runat="server" Text='<%# Eval("tenTour") %>'></asp:Label></h2>
    <asp:TextBox runat="server" ID="txtId" Text='<%# Eval("id") %>'  CssClass="hidden" ></asp:TextBox>
<div class="clearfix"></div>
<div class="vc_row-fluid">
<div class="note"></div>
<h2>Thông tin khách hàng</h2>

<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Tên và tên</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <asp:TextBox runat="server" ID="txtHoten" CssClass="ten"></asp:TextBox>
        
        <div id="widget-ten" data-notify-type="success" data-notify-msg=""></div>
    </div>
</div>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Địa chỉ</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <input type="text" name="diachi" class="diachi" value="">
    </div>
</div>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Email</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
       <asp:TextBox runat="server" ID="Email" CssClass="ten"></asp:TextBox>
    </div>
    <div id="widget-subscribe-form-result" data-notify-type="success" data-notify-msg=""></div>
</div>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Điện thoại</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <input type="text" name="phone" class="phone" value="">
    </div>
</div>
<h2>Thông tin tour</h2>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Ngày khởi hành</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <input type="date" name="start_day">

    </div>

</div>

<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Tổng số khách</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <select name="ng_lon" class="ng_lon">
            <option value="">Người lớn</option>
                       <option value="1">1</option>
            
                        <option value="2">2</option>
            
                        <option value="3">3</option>
            
                        <option value="4">4</option>
            
                        <option value="5">5</option>
            
                        <option value="6">6</option>
            
                        <option value="7">7</option>
            
                        <option value="8">8</option>
            
                        <option value="9">9</option>
            
                        <option value="10">10</option>
            
                        <option value="11">11</option>
            
                        <option value="12">12</option>
            
                        <option value="13">13</option>
            
                        <option value="14">14</option>
            
                        <option value="15">15</option>
            
                        <option value="16">16</option>
            
                        <option value="17">17</option>
            
                        <option value="18">18</option>
            
                        <option value="19">19</option>
            
                        <option value="20">20</option>
            
                        <option value="21">21</option>
            
                        <option value="22">22</option>
            
                        <option value="23">23</option>
            
                        <option value="24">24</option>
            
                        <option value="25">25</option>
            
                        <option value="26">26</option>
            
                        <option value="27">27</option>
            
                        <option value="28">28</option>
            
                        <option value="29">29</option>
            
                        <option value="30">30</option>
            
                        <option value="31">31</option>
            
                        <option value="32">32</option>
            
                        <option value="33">33</option>
            
                        <option value="34">34</option>
            
                        <option value="35">35</option>
            
                        <option value="36">36</option>
            
                        <option value="37">37</option>
            
                        <option value="38">38</option>
            
                        <option value="39">39</option>
            
                        <option value="40">40</option>
            
                        <option value="41">41</option>
            
                        <option value="42">42</option>
            
                        <option value="43">43</option>
            
                        <option value="44">44</option>
            
                        <option value="45">45</option>
            
                        <option value="46">46</option>
            
                        <option value="47">47</option>
            
                        <option value="48">48</option>
            
                        <option value="49">49</option>
            
                        <option value="50">50</option>
            
                    </select>

        <select name="tre_em" class="tre_em">
            <option value="">Trẻ em</option>
                       <option value="1">1</option>
            
                        <option value="2">2</option>
            
                        <option value="3">3</option>
            
                        <option value="4">4</option>
            
                        <option value="5">5</option>
            
                        <option value="6">6</option>
            
                        <option value="7">7</option>
            
                        <option value="8">8</option>
            
                        <option value="9">9</option>
            
                        <option value="10">10</option>
            
                        <option value="11">11</option>
            
                        <option value="12">12</option>
            
                        <option value="13">13</option>
            
                        <option value="14">14</option>
            
                        <option value="15">15</option>
            
                        <option value="16">16</option>
            
                        <option value="17">17</option>
            
                        <option value="18">18</option>
            
                        <option value="19">19</option>
            
                        <option value="20">20</option>
            
                        <option value="21">21</option>
            
                        <option value="22">22</option>
            
                        <option value="23">23</option>
            
                        <option value="24">24</option>
            
                        <option value="25">25</option>
            
                        <option value="26">26</option>
            
                        <option value="27">27</option>
            
                        <option value="28">28</option>
            
                        <option value="29">29</option>
            
                        <option value="30">30</option>
            
                        <option value="31">31</option>
            
                        <option value="32">32</option>
            
                        <option value="33">33</option>
            
                        <option value="34">34</option>
            
                        <option value="35">35</option>
            
                        <option value="36">36</option>
            
                        <option value="37">37</option>
            
                        <option value="38">38</option>
            
                        <option value="39">39</option>
            
                        <option value="40">40</option>
            
                        <option value="41">41</option>
            
                        <option value="42">42</option>
            
                        <option value="43">43</option>
            
                        <option value="44">44</option>
            
                        <option value="45">45</option>
            
                        <option value="46">46</option>
            
                        <option value="47">47</option>
            
                        <option value="48">48</option>
            
                        <option value="49">49</option>
            
                        <option value="50">50</option>
            
                    </select>

    </div>
</div>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
        <span>Thông điệp</span>
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <textarea class="thongdiep" name="thongdiep" placeholder="your idea this tour..." cols="30" rows="5"></textarea>
    </div>
</div>
<div class="vc_span12 wpb_column vc_column_container">
    <div class="vc_span3 wpb_column vc_column_container">
    </div>
    <div class="vc_span9 wpb_column vc_column_container">
        <div class="clickcheck">
        
          
            <asp:LinkButton runat="server" CssClass="btn btn-danger btnregistertrial" OnClick="insertOrder" >
                  <i class="fa fa-paper-plane-o"></i> Đặt tour
            </asp:LinkButton>

        </div>
      
            
        </div>
    </div>
</div>

</div>
</div>
        </div>
</asp:Content>
