<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudDashboard.aspx.cs" Inherits="Demo3.StudDashboard" %>

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
    <p>ABEDA'S KITCHEN</P>
</div>
<div id="sidebar-nav">
<ul>
<li class="active"><a href="StudDashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="AddStudInfo.aspx"><i class="fa fa-desktop"></i>Price Details</a></li>
<li><a href="view_menu.aspx"><i class="fa fa-usd"></i>View Menu</a></li>
<li><a href="attendance.aspx"><i class="fa fa-pencil-square-o"></i> Mark Attendance</a></li>
<li><a href="ViewPoll.aspx"><i class="fa fa-map-marker"></i> View Poll</a></li>
<li><a href="sample123.aspx"><i class="fa fa-users"></i> Logout</a></li>
<%--<li><a href="#"><i class="fa fa-calendar-o"></i> Reservations</a></li>--%>
<%--<li><a href="#"><i class="fa fa-calendar"></i> Calendar</a></li>--%>
    <%--<li><a href="#"><i class="fa fa-sitemap"></i>  Vote/Poll</a></li>
<li><a href="generatepass.aspx"><i class="fa fa-line-chart"></i> Generate Pass</a></li>
<%--<li><a href="#"><i class="fa fa-comments-o"></i>View Poll</a></li>--%>
</ul>
</div>
</section>
        <section id="content">
    <div id="header">

        <div class="header-nav">
            <div class="menu-button">
                <!--<i class="fa fa-navicon"></i>--></div>
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
            <p>Student's Space</p>
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
