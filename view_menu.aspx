<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_menu.aspx.cs" Inherits="Demo3.view_menu" %>

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
<li><a href="StudDashboard.aspx"><i class="fa fa-dashboard"></i> Dashboard</a></li>
<li><a href="AddStudInfo.aspx"><i class="fa fa-desktop"></i>Price Details</a></li>
<li class="active"><a href="view_menu.aspx"><i class="fa fa-usd"></i>View Menu</a></li>
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
        </div>
<%--        <asp:Label ID="Label2" runat="server" Text="Select Date"></asp:Label><br> <br>
        <asp:Button ID="Button6" runat="server" Text="Date"  OnClick="Button6_Click"/>--%>
<%--        <asp:TextBox ID="datetxt" TextMode="Date" runat="server"></asp:TextBox>--%>
<%--        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="false" TodayDayStyle-BackColor="#6666ff">--%>

        </asp:Calendar>
        <center>
          </asp:GridView>

          <asp:Button ID="Button" runat="server" Text="Show Breakfast Menu" OnClick="Button_Click" Width="15%" BackColor="AliceBlue"/><br><br>
                 
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="OnSelectedIndexChanged">  
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
                <asp:BoundField DataField="bdate" HeaderText="Date" /> 
<%--             <asp:BoundField DataField="bname" HeaderText="Menu" /> --%>

                <asp:TemplateField HeaderText="Menu">
            <ItemTemplate>
                <asp:Label ID="bname" Text='<%# Eval("bname") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>

            </Columns>  
            
        </asp:GridView><br><br>
            <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtbname" runat="server"></asp:TextBox>   <asp:Button ID="Button1" runat="server" Text="Submit Your Choice" OnClick="Button1_Click" Width="15%" BackColor="AliceBlue" />
            </centre>

            <div class="content">
        <div class="content-header">
            
        </div>

            <center>
          </asp:GridView>

          <asp:Button ID="Button2" runat="server" Text="Show Lunch Menu" OnClick="Button2_Click" Width="15%" BackColor="AliceBlue" /><br><br>
                 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="OnSelectedIndexChanged1">  
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
                 <asp:BoundField DataField="ldate" HeaderText="Date" />  
<%--                <asp:BoundField DataField="bname" HeaderText="Menu" />  --%>

                <asp:TemplateField HeaderText="Menu">
            <ItemTemplate>
                <asp:Label ID="lname" Text='<%# Eval("lname") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>

            </Columns>  
            
        </asp:GridView><br><br>
            <asp:TextBox ID="txtldate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>   <asp:Button ID="Button3" runat="server" Text="Submit Your Choice" OnClick="Button3_Click" Width="15%" BackColor="AliceBlue" />
            </centre>

                   <div class="content">
        <div class="content-header">
            
        </div>

          <center>
          </asp:GridView>

          <asp:Button ID="Button4" runat="server" Text="Show Dinner Menu" OnClick="Button4_Click" Width="15%" BackColor="AliceBlue"/><br><br>
                 
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="OnSelectedIndexChanged2">  
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
                 <asp:BoundField DataField="ddate" HeaderText="Date" />  
                <asp:TemplateField HeaderText="Dinner Menu">
            <ItemTemplate>
                <asp:Label ID="dname" Text='<%# Eval("dname") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="select" ID="lnkSelect" runat="server" CommandName="select" />
            </ItemTemplate>
        </asp:TemplateField>

            </Columns>  
            
        </asp:GridView><br><br>
            <asp:TextBox ID="txtddate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtdname" runat="server"></asp:TextBox>   <asp:Button ID="Button5" runat="server" Text="Submit Your Choice" OnClick="Button5_Click" Width="15%" BackColor="AliceBlue"/>
        <br><br><br><br><br><br>
            </centre>
</section>
        </div>
        <br><br><br><br><br><br>
    </form>
</body>
</html>
