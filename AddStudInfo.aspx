<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudInfo.aspx.cs" Inherits="Demo3.AddStudInfo" %>

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
<li><a href="StudDashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li class="active"><a href="AddStudInfo.aspx"><i class="fa fa-desktop"></i>Price Details</a></li>
<li><a href="view_menu.aspx"><i class="fa fa-usd"></i>View Menu</a></li>
<li><a href="attendance.aspx"><i class="fa fa-pencil-square-o"></i> Mark Attendance</a></li>
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
                           <asp:Label ID="Label1" runat="server">         Student<i class="fa fa-caret-down"></i></asp:Label> 
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
        </div><center>
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
                <asp:BoundField DataField="meal" HeaderText="Meal Type" />  
                <asp:BoundField DataField="price" HeaderText="Price per Anum" />  


            </Columns>  
             
        </asp:GridView>
          <br>  <br> <br>     <asp:Label ID="Label12" runat="server" ForeColor="black" >GET ANNUAL PASS : Total Amount =  </asp:Label> 
            <asp:TextBox ID="TextBox1" runat="server" OnLoad="TextBox1_Load" ReadOnly="true"></asp:TextBox><br><br><br>

						
       
        <asp:Button ID="Button1" runat="server" Text="GENERATE PAYMENT RECEIPT" OnClick="Button3_Click" Width="20%" BackColor="AliceBlue"/></center>

</section>
        </div>
    </form>
</body>
</html>
