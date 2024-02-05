using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace Demo3
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string rno = txtrno.Text;

                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

                SqlConnection con = new SqlConnection(cs);
                con.Open();

                String query = "delete from registration where rno='" + txtrno.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                txtrno.Text = "  ";

                ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Student Deleted ')", true);
                con.Close();
            }
            catch(Exception ex)
            {
                lbmsg.Text = (ex.Message);
            }
            finally
            {
              

            }
        }
    }
    }
