<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GUI.Admin.Login" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
   <link rel="icon" type="image/png" href="Image/icons/favicon.ico" />
<!--===============================================================================================-->
	
    <link href="Vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="Font/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="Vendor/animate/animate.css" rel="stylesheet" />
<!--===============================================================================================-->	
	
    <link href="Vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
<!--===============================================================================================-->
	
    <link href="Vendor/select2/select2.min.css" rel="stylesheet" />
<!--===============================================================================================-->

    <link href="CSS/Main.css" rel="stylesheet" />
    <link href="CSS/util.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Image/img-01.png" />
				</div>

				<div class="login100-form validate-form">
					<span class="login100-form-title">
						Member Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <asp:TextBox ID="txtEmail" placeholder="Email" CssClass="input100" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						 <asp:TextBox ID="txtPass" placeholder="PassWord" CssClass="input100" runat="server" TextMode ="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
					   <asp:Button ID="btnThem" runat="server" Text="Login" CssClass="login100-form-btn" OnClick="btnThem_Click" />
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="SignUp.aspx">
							Create your Account
							
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	
    <script src="Vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->

    <script src="Vendor/bootstrap/js/popper.js"></script>
    <script src="Vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	
    <script src="Vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->

    <script src="Vendor/tilt/tilt.jquery.min.js"></script>
	<script >
	    $('.js-tilt').tilt({
	        scale: 1.1
	    })
	</script>
<!--===============================================================================================-->
    <script src="Js/main.js"></script>
    </form>
</body>
</html>
