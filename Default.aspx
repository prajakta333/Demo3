<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo3._Default" %>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="css1.css">
      <link rel="stylesheet" href="css2.css">

    <title>Admin Registration</title>

</head>
<body>
    <form id="form1" runat="server">
       <div> 

       <div class="header">
<div class="logoimg" style=""><img src="pictures/Abeda's Mess.png"></div>
<h1>ABEDA'S MESS</h1>
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

    <div class="row">
        <div class="col-md-4">
            <h2>Introduction</h2></br>
            <p class="lead">The Hostel-Mess premises comprises of a separate dining facility for students. 
                The Hostel-Mess has a separate dining hall and a well-equipped kitchen catering to more than 3800 students. 
                Mess serves breakfast, lunch, evening tea and dinner every day and the weekly menu is available with the mess in-charge. 
                The food served is of high quality and meets the nutritional quality standards. 
                Particular focus is laid to provide a well-balanced, nutritious diet with varying food tastes to all the students.

            </p></br>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">To know more about Abeda College &raquo;</a>
            </p>
        </div>

        <div class="rows">
           <h2> Highlights:-</h2></br>
            <p class="lead">
                *  Separate dining facility for all students.</br>
                *  Clean and hygienic environment.</br>
                *  Self-service system is promoted in the mess.</br>
                *  The menu is designed considering the nutritional requirements of the students.</br>
                *  Vegetarian and Non-Vegetarian meals are available.</br>
                *  The mess offers morning tea with regular breakfast, lunch, evening snacks and tea, dinner and milk to all students and staff members.

            </p>
            <%--<p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>--%>
        </div>
        <div class="col-md-4">
          <%--  <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
              <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>--%>
<%--            </p>--%>
        </div>
    </div>

           <div id="footer"><center>
         Mess Management System  &copy; <%: DateTime.Now.Year %> - Designed By. Pranali & Prajakta</center>
                   </div>
        </form>
</body>
</html>


<%--</asp:Content>--%>
