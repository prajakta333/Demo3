<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="Demo3.AdminRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Registration</title>
      <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="navbar123.css" rel="stylesheet" type="text/css"  />

<link href="temp.css" rel="stylesheet" type="text/css" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="samp1.css">


<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form id="form1" runat="server">
  
          <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <ul class="menu-items">
                <li><a href="sample123.aspx">Home</a></li>
<%--                <li><a href="sample123.aspx">About</a></li>--%>
                <li><a href="temp.aspx">Student</a></li>
                <li><a href="AdminLogin.aspx">Admin</a></li>
<%--                <li><a href="#">Testimonial</a></li>--%>
<%--                <li><a href="#">Contact</a></li>--%>
            </ul>
            <h1 class="logo">Abeda's Kitchen</h1>
        </div>
    </nav>
            

	<div class="main-w3layouts wrapper"><br><br><br><br>
		<h1> Admin SignIn </h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
					 <br/> <br/> 
				<asp:TextBox ID="txtaname"   placeholder="Name" runat="server" required="" ></asp:TextBox><br>

				<asp:TextBox ID="txtagmail"  TextMode="Email"  placeholder="Email" runat="server" required="" ></asp:TextBox><br>

				<asp:TextBox ID="txtapassword" TextMode="Password"   placeholder="Password"  runat="server" required="" ></asp:TextBox> <br>

					
				
	<center><asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" Width="50%" />  </center>
     <p>Already have an Account...!!!  <a href="AdminLogin.aspx">  Login Now!</a></p>
                	</div>

				</form>
			</div>
		</div>
	
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
        </div>


    </form>
</body>
</html>
