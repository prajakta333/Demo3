<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Poll.aspx.cs" Inherits="Demo3.Poll" %>

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
<li><a href="ViewStudDetails.aspx"><i class="fa fa-desktop"></i>View Student Details</a></li>
<li><a href="DeleteStudent.aspx"><i class="fa fa-usd"></i>Delete Student</a></li>
<li><a href="AddInventory.aspx"><i class="fa fa-pencil-square-o"></i>Inventory</a></li>
<li><a href="menu.aspx"><i class="fa fa-sitemap"></i> Meal Charges</a></li>
<li><a href="AdToday'sMenu.aspx"><i class="fa fa-pencil-square-o"></i>Add Menu</a></li>
<li><a href="ViewAttendance.aspx"><i class="fa fa-line-chart"></i> View Attendance</a></li>
<li class="active"><a href="Poll.aspx"><i class="fa fa-comments-o"></i>View Poll</a></li>
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
<%--        <asp:Button ID="Button10" runat="server" Text="" OnClick="Button10_Click" />--%>
             <center>

        <asp:Button ID="Button3" runat="server" Text="View Breakfast Poll" OnClick="Button3_Click" Width="15%" BackColor="AliceBlue"/>   <asp:Button ID="Button4" runat="server" Text="Clear Poll" OnClick="Button4_Click" Width="15%" BackColor="AliceBlue" />   <br><br><br>
   

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
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
                                <asp:BoundField DataField="date" HeaderText="Date" />  

<%--                <asp:BoundField DataField="breakfast" HeaderText="Breakfast Menu" />  --%>
                  <asp:TemplateField HeaderText="Breakfast Menu">
            <ItemTemplate>
                <asp:Label ID="breakfast" Text='<%# Eval("breakfast") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
         <asp:BoundField DataField="Votes" HeaderText="Votes" />  

        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>

        </Columns>  
      </asp:GridView>
                 <br><br>
 <asp:TextBox ID="txtbdate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtbreakfast" runat="server"> </asp:TextBox> <asp:TextBox ID="txtbvote" runat="server"> </asp:TextBox>   <asp:Button ID="Button6" runat="server" Text="Submit" OnClick="Button6_Click" Width="15%" BackColor="AliceBlue"/>
            
                 <br><br><br>
            <div class="content">
        <div class="content-header">
           
        </div>
        <asp:Button ID="Button1" runat="server" Text="View Lunch Poll" OnClick="Button1_Click" Width="15%" BackColor="AliceBlue" />   <asp:Button ID="Button8" runat="server" Text="Clear Poll" OnClick="Button8_Click"  Width="15%" BackColor="AliceBlue"/>   <br><br><br>
   

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">  
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
           <asp:BoundField DataField="date" HeaderText="Date" />  
            <asp:TemplateField HeaderText="Lunch Menu">
            <ItemTemplate>
                <asp:Label ID="lunch" Text='<%# Eval("lunch") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
         <asp:BoundField DataField="Votes" HeaderText="Votes" />  

        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>        </Columns>  
      </asp:GridView><br><br>
                            <asp:TextBox ID="txtldate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtlunch" runat="server"> </asp:TextBox> <asp:TextBox ID="txtlvote" runat="server"> </asp:TextBox>   <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" Width="15%" BackColor="AliceBlue"/>

                <br><br><br>

                <div class="content">
        <div class="content-header">
           
        </div>
        <asp:Button ID="Button2" runat="server" Text="View Dinner Poll" OnClick="Button2_Click" Width="15%" BackColor="AliceBlue"/>   <asp:Button ID="Button9" runat="server" Text="Clear Poll" OnClick="Button9_Click" Width="15%" BackColor="AliceBlue"/>   <br><br><br>
   

            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CellPadding ="6" ForeColor="#333333" GridLines="Both" OnSelectedIndexChanged="GridView3_SelectedIndexChanged1">  
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
                           <asp:BoundField DataField="date" HeaderText="Date" />  
            <asp:TemplateField HeaderText="Dinner Menu">
            <ItemTemplate>
                <asp:Label ID="dinner" Text='<%# Eval("dinner") %>' runat="server"  />
            </ItemTemplate>
        </asp:TemplateField>
         <asp:BoundField DataField="Votes" HeaderText="Votes" />  

        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="Select" ID="lnkSelect" runat="server" CommandName="Select" />
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>  
      </asp:GridView><br><br>
       <asp:TextBox ID="txtddate" runat="server"></asp:TextBox>    <asp:TextBox ID="txtdinner" runat="server"> </asp:TextBox> <asp:TextBox ID="txtdvote" runat="server"> </asp:TextBox>   <asp:Button ID="Button7" runat="server" Text="Submit" OnClick="Button7_Click"  Width="15%" BackColor="AliceBlue"/>
                    <br><br><br><br><br><br><br><br><br><br>
                    <br>
        </center>
    </div>
</section>
        </div>
    </form>
</body>
</html>
