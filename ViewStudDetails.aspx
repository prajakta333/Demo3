<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStudDetails.aspx.cs" Inherits="Demo3.ViewStudDetails" %>

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
<li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li class="active"><a href="ViewStudDetails.aspx"><i class="fa fa-desktop"></i>View Student Details</a></li>
<li><a href="DeleteStudent.aspx"><i class="fa fa-usd"></i>Delete Student</a></li>
<li><a href="AddInventory.aspx"><i class="fa fa-pencil-square-o"></i>Inventory</a></li>
<li><a href="menu.aspx"><i class="fa fa-sitemap"></i> Meal Charges</a></li>
<li><a href="AdToday'sMenu.aspx"><i class="fa fa-pencil-square-o"></i>Add Menu</a></li>
<li><a href="#"><i class="fa fa-line-chart"></i> View Attendance</a></li>
<li><a href="#"><i class="fa fa-comments-o"></i>View Poll</a></li>
<li><a href="sample123.aspx"><i class="fa fa-calendar"></i> LogOut</a></li></ul>
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
<%--        <div style="height:800px; overflow:auto" >--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding ="4" ForeColor="#333333" GridLines="Both">  
            <AlternatingRowStyle BackColor="White"/>  
            <EditRowStyle BackColor="#7C6F57" />  
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />  
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />  
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />  
            <RowStyle BackColor="#E3EAEB" />  
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />  
            <SortedAscendingCellStyle BackColor="#F8FAFA" />  
            <SortedAscendingHeaderStyle BackColor="#246B61" />  
            <SortedDescendingCellStyle BackColor="#D4DFE1" />  
            <SortedDescendingHeaderStyle BackColor="#15524A" />  
            <Columns>  
                <asp:BoundField DataField="sid" HeaderText="Student ID" />  
                <asp:BoundField DataField="rno" HeaderText="Roll No" />  
                <asp:BoundField DataField="fname" HeaderText="First Name" />  
                <asp:BoundField DataField="lname" HeaderText="Last Name" />  
                <asp:BoundField DataField="gender" HeaderText="Gender" />  
               <asp:BoundField DataField="mobile" HeaderText="Contact No" />  
                <asp:BoundField DataField="address" HeaderText="Address" />  
                <asp:BoundField DataField="country" HeaderText="Country" />
                <asp:BoundField DataField="state" HeaderText="State" />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                <asp:BoundField DataField="course" HeaderText="Course" />
                <asp:BoundField DataField="cyear" HeaderText="Course Year" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="password" HeaderText="Password" />

            </Columns>  
        </asp:GridView>
<%--            </div>--%>
        </div>
    </div>
</section>
        </div>
    </form>
</body>
</html>
