using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fname = txtfname.Text;
            string email = txtemail.Text;
            string feedback = txtfeedback.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into sfeedback values (@fname, @email, @feedback)";
            String query1 = "select count(*) from[sfeedback] where fname='" + txtfname.Text + "'  or email='" + txtemail.Text + "' or feedback='" + txtfeedback.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            if ((!String.IsNullOrEmpty(fname) && !String.IsNullOrEmpty(email) && !String.IsNullOrEmpty(feedback)))
            {
                if (temp == 1)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert(' email id or password is duplicate ')", true);


                }
                else
                {
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("fname", txtfname.Text);
                    cmd.Parameters.AddWithValue("email", txtemail.Text);
                    cmd.Parameters.AddWithValue("feedback", txtfeedback.Text);

                    txtfname.Text = "";
                    txtemail.Text = "";
                    txtfeedback.Text = "";

                    txtfname.Focus();

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