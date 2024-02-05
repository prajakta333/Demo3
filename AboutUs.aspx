<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Demo3.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css1.css">
      <link rel="stylesheet" href="css2.css">
</head>
<body>
<%--    <form id="form1" runat="server">--%>
        <div>
            
       <div class="header">
<div class="logoimg" style=""><img src="pictures/Abeda's Mess.png"></div>
<h1>ABEDA'S MESS</h1>
</div>

              <ul>
  <li><a href="Default.aspx">Home</a></li>
  <li><a href="#news">About Us</a></li>
  <li class="dropdown">
    <a href="" class="dropbtn">Student</a>
    <div class="dropdown-content">
      <a href="About.aspx">Registration</a>
      <a href="Contact.aspx">Login</a>
          <li class="dropdown">

         <a href="" class="dropbtn">Admin</a>
    <div class="dropdown-content">
      <a href="AdminRegistration.aspx">Registration</a>
      <a href="AdminLogin.aspx">Login</a>
      <li><a href="Feedback.aspx">Contact Us</a></li>

    </div>
  </li>
</ul>
        </div>
    <section class ="banner">
        <img src="pictures/cant5.jpg">
        </section>
<%--            </form>--%>
</body>
               <div id="footer"><center>
         Mess Management System  &copy; <%: DateTime.Now.Year %> - Designed By. Pranali & Prajakta</center>
                   </div>

</html>
