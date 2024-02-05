<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Demo3.attendance" %>

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
<li class="active"><a href="attendance.aspx"><i class="fa fa-pencil-square-o"></i> Mark Attendance</a></li>
<li><a href="ViewPoll.aspx"><i class="fa fa-map-marker"></i> View Poll</a></li>
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
        <asp:Label ID="Label2" runat="server" Text="Mark Today's Attendance"></asp:Label><br> <br>
<%--        <asp:Button ID="Button2" runat="server" Text="Date"  OnClick="Button2_Click"/>--%>
        <asp:TextBox ID="datetxt" TextMode="Date" runat="server"></asp:TextBox>
<%--        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="false" TodayDayStyle-BackColor="#6666ff">--%>

        </asp:Calendar>
        <center>
         
          <br>  <br> <br>     <asp:Label ID="Label12" runat="server" ForeColor="black" >Mark Attendance</asp:Label> 
						<asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="black" RepeatDirection="Vertical">
						<asp:ListItem>PRESENT </asp:ListItem>
						<asp:ListItem>ABSENT</asp:ListItem>    
						</asp:RadioButtonList><br>
						
       
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="15%" BackColor="AliceBlue"/></center>

</section>
        </div>


    </form>
</body>
</html>
