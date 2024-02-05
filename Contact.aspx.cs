using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Demo3
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //  string email = txtemail.Text;
            // string passwd = txtpasswd.Text;

           
            
                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);
                string check = "select count(*) from[registration] where rno='"+txtrollno.Text+"' and email='" + txtemail.Text + "' and password='" + txtpassword.Text + "' ";
                SqlCommand cmd = new SqlCommand(check, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int i = cmd.ExecuteNonQuery();

      //      int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                

                con.Close();

            //   if (temp == 1)
            if (dt.Rows.Count > 0)
            {
                Session["rno"] = txtrollno.Text;
                Response.Redirect("StudDashboard.aspx");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Login in Successfull ')", true);
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Your Email_Id or Password is Invalid. ')", true);

                }

            }
           
        
    }
}