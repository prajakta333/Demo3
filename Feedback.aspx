<%@ Page Title="Feedback" Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Demo3.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="css1.css">
      <link rel="stylesheet" href="css2.css">
    <link href="StyleD.css" rel="stylesheet" />
<link href="boot.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="header">
<div class="logoimg" style=""><img src="pictures/Abeda's Mess.png"></div>
<h8>ABEDA'S MESS</h8>
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
<%--            <asp:Label ID="Label3" runat="server" Text="Label">Name</asp:Label></br>
   <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></br></br>
<asp:RequiredFieldValidator ID="fname" runat="server" ControlToValidate="txtfname" ErrorMessage="Please Enter Email ID" BorderColor ="Red" CssClass="alert" ForeColor="Red"> Please Enter Email ID </asp:RequiredFieldValidator>

            <asp:Label ID="Label1" runat="server" Text="Label">Email</asp:Label></br>
   <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></br></br>
<asp:RequiredFieldValidator ID="email" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email ID" BorderColor ="Red" CssClass="alert" ForeColor="Red"> Please Enter Email ID </asp:RequiredFieldValidator>

   
    <asp:Label ID="Label2" runat="server" Text="Label">Feedback</asp:Label>    </br>    
    <asp:TextBox ID="txtfeedback" runat="server"></asp:TextBox></br></br>
    <asp:RequiredFieldValidator ID="feedback" runat="server" ControlToValidate="txtfeedback" ErrorMessage="Please enter the password"  BorderColor ="Red" CssClass="alert" ForeColor="Red">Please enter the password</asp:RequiredFieldValidator>


    <asp:Button ID="Button1" runat="server" Text="Login"  OnClick="Button1_Click"/>--%>

      
            <div class=" page-holder d-flex align-items-center">
<div class="container">
<div class="row align-items-center py-5">
<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

<%--<div class="pr-lg-5">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.512026559995!2d73.87438901468818!3d18.505749887417636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c1c64ba8953b%3A0xd067dc0ee862495c!2sAbeda%20Inamdar%20Senior%20College%20of%20Arts%2C%20Science%20and%20Commerce!5e0!3m2!1sen!2sin!4v1665768074798!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
</div>--%>
<div class="col-lg-5 px-lg-4">
<h1 class="text-base text-primary text-uppercase mb-4">Contact US</h1>
<%--<h2 class="mb-4">Contact US</h2>--%>

<div class ="form-group mb-4">
    <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtfname"  required= "true" width ="150%" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Name" runat="server" ></asp:TextBox>

</div>

    <div class ="form-group mb-4">
    <asp:Label ID="Label3" runat="server" Text="Label">Email</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtemail"  required= "true" width ="150%" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

</div>

<div class ="form-group mb-4">
 <asp:Label ID="Label2" runat="server" Text="Label">Please share the feedback</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtfeedback" required= "true" TextMode="Password" width ="150%" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Hii I am.....        It was a wonderful experience...." runat="server" Height="50px" ></asp:TextBox>

</div>
<div class="form-group mb-4">
<div class="custom-control custom-checkbox">
<%--<asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" />--%>
</div>
</div>
<asp:Button Text="SUBMIT" CssClass="btn btn-primary" Height="50px" Width="150%" runat="server" OnClick="Button1_Click"/>
</div>
</div>      

        </div>
                <asp:Label ID="Label4" runat="server" Text="Label">Our Location</asp:Label>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.512026559995!2d73.87438901468818!3d18.505749887417636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c1c64ba8953b%3A0xd067dc0ee862495c!2sAbeda%20Inamdar%20Senior%20College%20of%20Arts%2C%20Science%20and%20Commerce!5e0!3m2!1sen!2sin!4v1665768074798!5m2!1sen!2sin" width="600" height="450" style="border:2px solid black;" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

        <div id="footer"><center>
         Mess Management System  &copy; <%: DateTime.Now.Year %> - Designed By. Pranali & Prajakta</center>
                   </div>
    </form>
</body>
</html>
