<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInventory.aspx.cs" Inherits="Demo3.AddInventory" %>

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
        <p>ABEDA'S KITCHEN</P>

</div>
<div id="sidebar-nav">
<ul>
<li><a href="dashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="ViewStudDetails.aspx"><i class="fa fa-desktop"></i>View Student Details</a></li>
<li><a href="DeleteStudent.aspx"><i class="fa fa-usd"></i>Delete Student</a></li>
<li class="active"><a href="AddInventory.aspx"><i class="fa fa-pencil-square-o"></i>Inventory</a></li>
<li><a href="menu.aspx"><i class="fa fa-sitemap"></i> Meal Charges</a></li>
<li><a href="AdToday'sMenu.aspx"><i class="fa fa-pencil-square-o"></i>Add Menu</a></li>
<li><a href="ViewAttendance.aspx"><i class="fa fa-line-chart"></i> View Attendance</a></li>
<li><a href="Poll.aspx"><i class="fa fa-comments-o"></i>View Poll</a></li>
<li><a href="sample123.aspx"><i class="fa fa-calendar"></i> LogOut</a></li></ul>
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
<%--            <asp:Button ID="Button2" runat="server" Text="Select Date" OnClick="Button2_Click"/><br><br>--%>


        <asp:TextBox ID="DnTtxt" TextMode="Date" runat="server"></asp:TextBox>
<%--            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="false" TodayDayStyle-BackColor="Wheat"></asp:Calendar>--%>
        <asp:Label ID="lbmsg" runat="server" Text="" ForeColor="Red"></asp:Label>   
        <center>
            <asp:Label ID="Label1" runat="server" Text="Label">ITEM  : </asp:Label>
            <asp:TextBox ID="txtitem" runat="server"  Width="20%" ></asp:TextBox><br><br><br>
            <asp:Label ID="Label2" runat="server" Text="Label"> OUANTITY(per kg/litre)  :  </asp:Label>        
            <asp:TextBox ID="txtquantity" runat="server" Width="20%"></asp:TextBox><br><br><br>

            <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" Width="10%" BackColor="AliceBlue" />
                  </center><br><br><br><br><br><br><br>  
         <div class="content">
        <div class="content-header">
            
        </div>
                <center>
<br><br><br><br><br><asp:Button ID="Button3" runat="server" Text="Show Inventory" OnClick="Button3_Click" Width="10%" BackColor="AliceBlue" />          <asp:Button ID="Button4" runat="server" Text="CLEAR" OnClick="Button4_Click" Width="10%" BackColor="AliceBlue" />
     
                    <br><br><br>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both">  
            <AlternatingRowStyle BackColor="White" />  
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
                <asp:BoundField DataField="ID" HeaderText="ID" />  
                 <asp:BoundField DataField="date" HeaderText="DATE" />  

                <asp:BoundField DataField="item" HeaderText="ITEM" />  
                <asp:BoundField DataField="quantity" HeaderText="OUANTITY(per kg/litre) " />  


            </Columns>  
             
        </asp:GridView><br><br><br><br><br><br><br>   </center>
    </div>
</section>
        </div>
    </form>
</body>
</html>
