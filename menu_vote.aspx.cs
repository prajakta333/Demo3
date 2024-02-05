using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class menu_vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string bname = txtbname.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into breakfast values(@bname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("bname", txtbname.Text);
            cmd.ExecuteNonQuery();
            txtbname.Text = "";

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from breakfast";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from lunch";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from dinner";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from breakfast";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            
            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from dinner";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
           
            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from lunch";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string lname = txtlname.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into lunch values(@lname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("lname", txtlname.Text);
            cmd.ExecuteNonQuery();
            txtlname.Text = "";

            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string dname = txtdname.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into dinner values(@dname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("dname", txtdname.Text);
            cmd.ExecuteNonQuery();
            txtdname.Text = "";

            con.Close();
        }
    }
}