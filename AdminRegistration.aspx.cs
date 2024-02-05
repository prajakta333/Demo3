using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.Helpers;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Demo3
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string aname = txtaname.Text;
            string agmail = txtagmail.Text;
            string apassword = txtapassword.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into adminreg values (@aname, @agmail, @apassword)";
            String query1 = "select count(*) from[adminreg] where  agmail='" + txtagmail.Text + "' or apassword='" + txtapassword.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            if ((!String.IsNullOrEmpty(aname) && !String.IsNullOrEmpty(agmail) && !String.IsNullOrEmpty(apassword)))
            {
                if (temp == 1)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert(' email id or password is duplicate ')", true);


                }
                else
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("name", txtaname.Text);
                    cmd.Parameters.AddWithValue("agmail", txtagmail.Text);
                    cmd.Parameters.AddWithValue("apassword", txtapassword.Text);

                    txtaname.Text = "";
                    txtagmail.Text = "";
                    txtapassword.Text = "";

                    txtaname.Focus();

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Successfully Account Created. Now Please Login. ')", true);
                    con.Close();


                }
            }
            else
            {

                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Please enter values ')", true);

            }
        }

       
    }
}