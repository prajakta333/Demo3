<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="temp.aspx.cs" Inherits="Demo3.temp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<style>
table, th, td {
  border:2px solid #ffffff;
}
</style>
<head runat="server">
    <title></title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="navbar123.css" rel="stylesheet" type="text/css"  />

<link href="temp.css" rel="stylesheet" type="text/css" />

<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="samp1.css">


<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	    <form id="form1" runat="server">

 <nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <ul class="menu-items">
                <li><a href="sample123.aspx">Home</a></li>
<%--                <li><a href="sample123.aspx">About</a></li>--%>
                <li><a href="temp.aspx">Student</a></li>
                <li><a href="AdminLogin.aspx">Admin</a></li>
<%--                <li><a href="#">Testimonial</a></li>--%>
<%--                <li><a href="#">Contact</a></li>--%>
            </ul>
            <h1 class="logo">Abeda's Kitchen</h1>
        </div>
    </nav>

	<div class="main-w3layouts wrapper"><br><br><br><br>
		<h1> Student SignIn </h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
<%--					<input class="text" type="text" name="Username" placeholder="Username" required="">--%>

				<table style="width:100%">
					<tr>
			<td>		<asp:TextBox ID="txtrno"  placeholder="Roll No" type="text" runat="server"  required= ""></asp:TextBox></td>

				<td>	<asp:TextBox ID="txtfname" runat="server" type="text" name="Username" placeholder="Username" required=""></asp:TextBox></td>

				<td>	<asp:TextBox ID="txtlname"   type="text" placeholder ="Last Name" runat="server"  required=""> </asp:TextBox></td><br><br>
						</tr>
					<tr>								</table>
				<br>
			
					<asp:Label ID="Label2" runat="server" Text="Gender" ForeColor="WhiteSmoke" Width="30%">  </asp:Label> <%--<asp:Label ID="Label1" runat="server" Text="............................" ForeColor="#3d3d3d"></asp:Label>--%>

						<asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="WhiteSmoke" CellPadding="5" CellSpacing="10" RepeatColumns="2" RepeatLayout="Flow">
						<asp:ListItem>Male   </asp:ListItem>
						<asp:ListItem>Female</asp:ListItem>    
						</asp:RadioButtonList><br>	<br>				
				<table style="width:100%"><tr>
		<td>	<asp:TextBox ID="txtmobile"   type="text" MaxLength="10"  placeholder="Contact No" runat="server" required="" ></asp:TextBox> </td>
						
			<td>		<asp:TextBox ID="txtaddress" type="text"  placeholder="Address" runat="server"  ></asp:TextBox> <br></td>
				
		<td>			<asp:TextBox ID="txtcountry" type="text"  placeholder="Country" runat="server" required=""  ></asp:TextBox> </td></tr>

	<tr>	<td>			<asp:TextBox ID="txtstate" type="text"  placeholder="State" runat="server" required="" ></asp:TextBox>  </td>

		<td>			<asp:TextBox ID="txtcity" type="text"  placeholder="City" runat="server" required="" ></asp:TextBox> </td>

					<td><asp:TextBox ID="txtpincode"  type="text" placeholder="Pincode" runat="server" required="" ></asp:TextBox> </td>
				</tr>	</table>
			<br>		<asp:Label ID="Label14" runat="server" ForeColor="WhiteSmoke" Width="10%">Course : </asp:Label>   
						<asp:DropDownList ID="DropDownList1" runat="server" Width="30%">
									<asp:ListItem Text =" Select Course" value="Select" Selected="True">
									</asp:ListItem>
								  <asp:ListItem Text ="BCS" value="BCS">
									</asp:ListItem>
									<asp:ListItem Text ="MCS" value="MCS">
									</asp:ListItem>
						</asp:DropDownList> 
				<asp:Label ID="Label1" runat="server" Text=".............." ForeColor="#333333"></asp:Label>
						  <asp:Label ID="Label13" runat="server" Text="Label" ForeColor="WhiteSmoke" Width="17%">Course Year : </asp:Label>  
						<asp:DropDownList ID="DropDownList2" runat="server" Width="30%">

							 <asp:ListItem Text =" Select Course Year" value="Select" Selected="True">
									</asp:ListItem>
								  <asp:ListItem Text ="FIRST" value="FIRST">
									</asp:ListItem>
									<asp:ListItem Text ="SECOND" value="SECOND">
									</asp:ListItem>
							<asp:ListItem Text ="THIRD" value="THIRD">
									</asp:ListItem>
						</asp:DropDownList>
				</asp:RequiredFieldValidator><br><br>
								<table style="width:100%"><tr>

	<td>			<asp:TextBox ID="txtemail" TextMode="Email"  placeholder="Email" runat="server" required="" ></asp:TextBox><br></td>

<td><asp:TextBox ID="txtpassword"  TextMode="Password"  placeholder="Password"  runat="server" required="" ></asp:TextBox> <br></td>
							</tr>		</table>

					<div class="wthree-text">
						
						<div class="clear"> </div>
					</div>
			<center>		<asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" Width="50%"/>  </center>
				</form>
				<p>Already have an Account...!!! <a href="Contact.aspx"> Login Now!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<%--<div class="colorlibcopy-agile">
			<p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
		</div>--%>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
        </div>
    </form>
</body>
</html>
