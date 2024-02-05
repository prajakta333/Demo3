using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class AddStudInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["rno"].ToString();

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from meal_type";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoice.aspx");
        }

        protected void TextBox1_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select SUM(price) from meal_type";
            SqlCommand cmd = new SqlCommand(query, con);
            TextBox1.Text = cmd.ExecuteScalar().ToString();
            //SqlDataReader reader = cmd.ExecuteReader(); 
            con.Close();



        }
    }
}