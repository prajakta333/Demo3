<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Demo3.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Download Fee Receipt" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Height="49px" OnClick="Button1_Click"/><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/sample123.aspx">Go to Home Page</asp:HyperLink><asp:Panel ID = "Panel1" runat="server"><br>    <table border="1">        <tr>            <td style="text-align:center">                <h2 style="text-align:center">Abeda Inamdar Senior College of Arts, Science and Commerce</h2>                <h2 style="text-align:center">College Mess - Payment Receipt</h2>            </td>        </tr>        <tr>
            <td>
                Roll No :
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br>
                Name : 
                <asp:Label ID="Label6" runat="server" Text="Label6" OnLoad="Label6_Load"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Label7" OnLoad="Label7_Load"></asp:Label>
                
            </td>
        </tr>        <tr>
            <td>
                Class : 
                <asp:Label ID="Label3" runat="server" Text="Label3" OnLoad="Label3_Load"></asp:Label>
            </td>
        </tr>                 <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="1000">
                    <Columns>
                        <asp:BoundField DataField="meal" HeaderText="MEAL">
                        <ItemStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="PRICE">
                        <ItemStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
                        <%--<asp:BoundField DataField="fname" HeaderText="GENDER">
                        <ItemStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
                        <asp:BoundField DataField="lname" HeaderText="GMAIL">
                        <ItemStyle HorizontalAlign="Center"/>
                        </asp:BoundField>--%>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>        <tr>
            <td>
                Total Fee : 
                <asp:Label ID="Label4" runat="server" Text="Label" OnLoad="Label4_Load"></asp:Label><br><br>
            </td></tr>
        </table>
    <table border="1" style="width:1010px">
                <colgroup>
    <col span="2" style="background-color:none">
    <col style="background-color:none">
  </colgroup>
            <tr>

            <th>
                Signature of Student:<br><br><br>

            </th>
                
        <th>    Stamp/Signature<br>Principal     <br><br><br>  

        </th>
            
        </tr>                </table>        </asp:Panel>
        </div>
    </form>
</body>
</html>
