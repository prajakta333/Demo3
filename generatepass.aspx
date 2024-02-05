<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generatepass.aspx.cs" Inherits="Demo3.generatepass" %>

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
</div>
<div id="sidebar-nav">
<ul>
<li><a href="StudDashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="AddStudInfo.aspx"><i class="fa fa-desktop"></i>Add Information</a></li>
<li><a href="#"><i class="fa fa-usd"></i>Make Payment</a></li>
<li><a href="#"><i class="fa fa-pencil-square-o"></i> Mark Attendance</a></li>
<li><a href="#"><i class="fa fa-sitemap"></i>  Vote/Poll</a></li>
 <li class="active"><a href="generatepass.aspx"><i class="fa fa-line-chart"></i> Generate Pass</a></li>
<%--<li><a href="#"><i class="fa fa-comments-o"></i>View Poll</a></li>--%>
<li><a href="#"><i class="fa fa-map-marker"></i> View Self Details</a></li>
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
                    <li class="nav-settings">
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
                    </li>
                    <li class="nav-profile">
                        <div class="nav-profile-image">
                            <img
                                src="https://skynet.marketecture.com/user_avatars/258800/Hayley-Helsten.jpg"
                                alt="profile-img"
                                alt="profile image"
                            />
                            <div class="nav-profile-name">
                                Student<i class="fa fa-caret-down"></i>
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
        <asp:Button ID="Button1" runat="server" Text="GENERATE PASS" OnClick="Button5_Click"/>
</section>
        </div>
    </form>
</body>
</html>
