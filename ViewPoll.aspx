<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPoll.aspx.cs" Inherits="Demo3.ViewPoll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
             <link href="dashboard.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section id="sidebar">
<div class="white-label">
       <p>ABEDA'S KITCHEN</p>

</div>
<div id="sidebar-nav">
<ul>
<li><a href="StudDashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="AddStudInfo.aspx"><i class="fa fa-desktop"></i>Price Details</a></li>
<li><a href="view_menu.aspx"><i class="fa fa-usd"></i>View Menu</a></li>
<li><a href="attendance.aspx"><i class="fa fa-pencil-square-o"></i> Mark Attendance</a></li>
<li class="active"><a href="ViewPoll.aspx"><i class="fa fa-map-marker"></i> View Poll</a></li>
<li><a href="sample123.aspx"><i class="fa fa-users"></i> Logout</a></li>
</ul>
</div>
</section>
        <section id="content">
    <div id="header">
        <div class="header-nav">
            <div class="menu-button"><!--<i class="fa fa-navicon"></i>--></div>
            <div class="nav">
                <ul>
                    <%--<li class="nav-settings">
                        <div class="font-icon"><i class="fa fa-tasks"></i></div>
                    </li>
                    <li class="nav-mail">
                        <div class="font-icon">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                    </li>
                    <li class="nav-calendar">
                        <div class="font-icon">
                            <i class="fa fa-calendar"></i>
                        </div>
                    </li>
                    <li class="nav-chat">
                        <div class="font-icon">
                            <i class="fa fa-comments-o"></i>
                        </div>
                    </li>--%>
                    <li class="nav-profile">
                        <div class="nav-profile-image">
                            <img
                                src="pictures/Homedesk.jpg"
                                alt="profile-img"
                                alt="profile image"
                            />
                            <div class="nav-profile-name">
                                <asp:Label ID="Label1" runat="server">       STUDENT<i class="fa fa-caret-down"></i></asp:Label> 
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="content-header">
            <h1>Dashboard</h1>
            <p>Students's Space</p>
        </div>
        <center>
            <asp:Label ID="Label3" runat="server" Text="Highest Voted Breakfast Menu For The Date  => " ForeColor="#0000ff" Font-Bold="true">    </asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label2" OnLoad="Label2_Load"  ForeColor="#0000ff" Font-Bold="true"></asp:Label><br><br>
		 <asp:TextBox ID="TextBox1" runat="server" OnLoad="TextBox1_Load" ReadOnly="true"  BackColor="#EBF3FF" Font-Bold="true" Wrap="true" BorderStyle="None" Font-Size="XX-Large" ForeColor="#0000ff"></asp:TextBox><br><br><br>
               </center>
        <div class="content">
        <div class="content-header">
        </div>
            <center>
             <asp:Label ID="Label4" runat="server" Text="Highest Voted Lunch Menu For The Date  => " ForeColor="#0000ff" Font-Bold="true"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label5" OnLoad="Label5_Load"  ForeColor="#0000ff" Font-Bold="true"></asp:Label><br><br>
       <asp:TextBox ID="TextBox2" runat="server" OnLoad="TextBox2_Load1" ReadOnly="true"  BackColor="#EBF3FF" Font-Bold="true" Wrap="true" BorderStyle="None" Font-Size="XX-Large" ForeColor="#0000ff"></asp:TextBox><br><br><br>
                </center>
             <div class="content">
        <div class="content-header">
        </div>
                 <center>
                  <asp:Label ID="Label6" runat="server" Text="Highest Voted Dinner Menu For The Date  => " ForeColor="#0000ff" Font-Bold="true"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="Label7" OnLoad="Label7_Load"  ForeColor="#0000ff" Font-Bold="true"></asp:Label><br><br>
       <asp:TextBox ID="TextBox3" runat="server" OnLoad="TextBox3_Load1" ReadOnly="true"  BackColor="#EBF3FF" Font-Bold="true" Wrap="true" BorderStyle="None" Font-Size="XX-Large" ForeColor="#0000ff"></asp:TextBox><br><br><br>
        </center>
</section>
        </div>
    </form>
</body>
</html>
