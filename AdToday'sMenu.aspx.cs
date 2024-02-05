using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class AdToday_sMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string date = datetxt.Text;
            string bname = txtbname.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into breakfast values(@bdate, @bname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("bdate", datetxt.Text);

            cmd.Parameters.AddWithValue("bname", txtbname.Text);
            cmd.ExecuteNonQuery();
            txtbname.Text = "";

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string date = datetxt.Text;
            string lname = txtlname.Text;


            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into lunch values(@ldate, @lname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("ldate", datetxt.Text);

            cmd.Parameters.AddWithValue("lname", txtlname.Text);
            cmd.ExecuteNonQuery();
            txtbname.Text = "";

            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string date = datetxt.Text;
            string dname = txtdname.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into dinner values(@ddate, @dname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("ddate", datetxt.Text);
            cmd.Parameters.AddWithValue("dname", txtdname.Text);
            cmd.ExecuteNonQuery();
            txtbname.Text = "";

            con.Close();
        }

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    string date = datetxt.Text;
        //    datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}


        protected void Button8_Click1(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from dinner order by ddate";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from breakfast order by bdate";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from lunch order by ldate";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();
        }

        //protected void Button5_Click(object sender, EventArgs e)
        //{
        //    Calendar1.Visible = true;

        //}

        //protected void Button6_Click(object sender, EventArgs e)
        //{
        //    Calendar1.Visible = true;

        //}

        //protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        //{
        //    DateTime date1 = DateTime.Parse(datetxt.Text);
        //    datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}

        protected void Button6_Click1(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from breakfast";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from dinner";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
          

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from lunch";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
        }
    }
}