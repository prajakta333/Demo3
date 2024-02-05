<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Demo3.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="dashboard.css" rel="stylesheet" type="text/css" media="all" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="sidebar">
<div class="white-label">
        <p style="width:500px" >ABEDA'S KITCHEN</p>

</div>
<div id="sidebar-nav">
<ul>
<li class="active"><a href="dashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="ViewStudDetails.aspx"><i class="fa fa-desktop"></i>View Student Details</a></li>
<li><a href="DeleteStudent.aspx"><i class="fa fa-usd"></i>Delete Student</a></li>
<li><a href="AddInventory.aspx"><i class="fa fa-pencil-square-o"></i>Inventory</a></li>
<li><a href="menu.aspx"><i class="fa fa-sitemap"></i> Meal Charges</a></li>
<li><a href="AdToday'sMenu.aspx"><i class="fa fa-pencil-square-o"></i>Add Menu</a></li>
<li><a href="ViewAttendance.aspx"><i class="fa fa-line-chart"></i> View Attendance</a></li>
<li><a href="Poll.aspx"><i class="fa fa-comments-o"></i>View Poll</a></li>
<li><a href="sample123.aspx"><i class="fa fa-calendar"></i> LogOut</a></li>
    <%--<li><a href="#"><i class="fa fa-map-marker"></i> Get Traffic</a></li>
<li><a href="#"><i class="fa fa-users"></i> Employees</a></li>
<li><a href="#"><i class="fa fa-calendar-o"></i> Reservations</a></li>--%>
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
                                src="pictures/pink-hearts-background.jpg"
                                alt="profile-img"
                                alt="profile image"
                            />
                            <div class="nav-profile-name">
                                SYSTEM ADMIN<i class="fa fa-caret-down"></i>
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
            <p>Admin's Space</p>
        </div>
        <div class="widget-box sample-widget">
            <div class="widget-header">
                <h2>Breakfast</h2>
                <i class="fa fa-cog"></i>
            </div>
            <div class="widget-content">
                <img
                    src="pictures/breakfast-from-above.jpg"
                />
            </div>
        </div>
        <div class="widget-box sample-widget">
            <div class="widget-header">
                <h2>Lunch</h2>
                <i class="fa fa-cog"></i>
            </div>
            <div class="widget-content">
                <img
                    src="pictures/tea-cup-with-hot-peppers-and-yellow-tomatoes-on-red.jpg"
                />
            </div>
        </div>
        <div class="widget-box sample-widget">
            <div class="widget-header">
<%--                <h2>Dinner</h2>--%>
                <i class="fa fa-cog"></i>
            </div>
           <%-- <div class="widget-content">
                <img
                    src="pictures/ruan-richard-rodrigues-B9WQWQQsZUE-unsplash.jpg"
                />
            </div>--%>
        </div>
        <div class="widget-box sample-widget">
            <div class="widget-header">
<%--                <h2>Snacks</h2>--%>
                <i class="fa fa-cog"></i>
            </div>
            <%--<div class="widget-content">
                <img
                    src="pictures/amr-taha-gFgNz-Jp8MU-unsplash.jpg"
                />
            </div>--%>
        </div>
    </div>
</section>
        </div>
    </form>
</body>
</html>
