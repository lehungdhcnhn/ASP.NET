<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GUI.Admin.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flat Sign Up Form Responsive Widget Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
 <link href="CSS/style.css" rel="stylesheet" />
 <link href="Font/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!-- //css files -->
<!-- online-fonts -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Raleway+Dots' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main-agileits">
	<h2 class="sub-head">Sign Up</h2>
		<div class="sub-main">	
		
                 <asp:TextBox ID="txtHoten" placeholder="Họ tên" runat="server"></asp:TextBox>
					<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br>
				<asp:TextBox ID="txtTaikhoan" placeholder="Tài khoản" runat="server"></asp:TextBox>
					<span class="icon2"><i class="fa fa-user" aria-hidden="true"></i></span><br>
				<asp:TextBox ID="txtPhone" placeholder="Điện thoại" runat="server"></asp:TextBox>
					<span class="icon3"><i class="fa fa-phone" aria-hidden="true"></i></span><br>
			<asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox>
					<span class="icon4"><i class="fa fa-envelope" aria-hidden="true"></i></span><br>
			<asp:TextBox ID="txtPassWord" placeholder="PassWord" runat="server"></asp:TextBox>
					<span class="icon5"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
			<asp:TextBox ID="txtConfoirm" placeholder="Confirm PassWord" runat="server"></asp:TextBox>
					<span class="icon6"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
				
				<asp:Button ID="txtDangKy" runat="server" Text="Đăng ký" OnClick="txtDangKy_Click1" />
			
		      
			
		</div>
		<div class="clear"></div>
</div>
<!--//main-->


    </form>
</body>
</html>
