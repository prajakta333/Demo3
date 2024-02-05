using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            string check = "select count(*) from[adminreg] where agmail='" + txtagmail.Text + "' and apassword='" + txtapassword.Text + "' ";
            SqlCommand cmd = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            con.Close();


            if (temp == 1)
            {


                Response.Redirect("dashboard.aspx");
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Your Email_Id or Password is Invalid. ')", true);
            }
        }
    }
}