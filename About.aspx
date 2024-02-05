<%@ Page Title="Registration" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Demo3.About" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">--%>
<%--    <h2><%: Title %>.</h2>--%>
<%--    <h3>Your application description page.</h3>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
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
  <li><a href="AboutUs.aspx">About Us</a></li>
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
            
 


<div class=" page-holder d-flex align-items-center">
<div class="container">
<div class="row align-items-center py-5">
<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

<div class="pr-lg-5">
<img src="pictures/illustration.svg" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">
<h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>
<h2 class="mb-4">Welcome Back!</h2>

<div class ="form-group mb-4">  <asp:Label ID="Label1" runat="server" Text="Label">Roll No</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtrno" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Roll No" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label2" runat="server" Text="Label">First Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtfname" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="First Name" runat="server" Width="150%"></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label4" runat="server" Text="Label">Last Name</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtlname" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Last Name" runat="server" Width="150%" >

</asp:TextBox> </div><asp:Label ID="Label12" runat="server" Text="Label">Gender</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
<asp:ListItem>Male</asp:ListItem>
<asp:ListItem>Female</asp:ListItem>    
</asp:RadioButtonList>


<div class ="form-group mb-4">  <asp:Label ID="Label5" runat="server" Text="Label">Contact No</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtmobile" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Contact No" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label6" runat="server" Text="Label">Address</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtaddress" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Address" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label11" runat="server" Text="Label">Country</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtcountry" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Address" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label7" runat="server" Text="Label">State</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtstate" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="State" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label8" runat="server" Text="Label">City</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtcity" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="City" runat="server" Width="150%" ></asp:TextBox> </div>

<div class ="form-group mb-4">  <asp:Label ID="Label10" runat="server" Text="Label">Pincode</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtpincode" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="City" runat="server" Width="150%" ></asp:TextBox> </div>

<asp:Label ID="Label14" runat="server" Text="Label">Course</asp:Label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text =" Select Course" value="Select" Selected="True">
                </asp:ListItem>
              <asp:ListItem Text ="BCS" value="BCS">
                </asp:ListItem>
                <asp:ListItem Text ="MCS" value="MCS">
                </asp:ListItem>
    </asp:DropDownList>   <br/>  <br/>
    

      <asp:Label ID="Label13" runat="server" Text="Label">Course Year</asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server">
         <asp:ListItem Text =" Select Course Year" value="Select" Selected="True">
                </asp:ListItem>
              <asp:ListItem Text ="FIRST" value="FIRST">
                </asp:ListItem>
                <asp:ListItem Text ="SECOND" value="SECOND">
                </asp:ListItem>
    </asp:DropDownList> <br/> <br/>

<div class ="form-group mb-4">
    <asp:Label ID="Label9" runat="server" Text="Label">Email</asp:Label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<asp:TextBox ID="txtemail" required= "true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" Width="150%" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
    <asp:Label ID="Label3" runat="server" Text="Label">Password</asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtpassword" required= "true" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" Width="150%" runat="server" ></asp:TextBox>

</div>


<asp:Button Text="Sign up" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Button1_Click"/>
</div>
</div>


</div>
</div>



        </div>

  

       <div id="footer"><center>
         Mess Management System  &copy; <%: DateTime.Now.Year %> - Designed By. Pranali & Prajakta</center>
                   </div>
        </form>
</body>
</html>