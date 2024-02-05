using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
//using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class Poll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
     //       select dish, COUNT( * ) as votes from l group by dish order by count(*) desc;


            String query = "select date,breakfast, count(*) as Votes from selectbreakfast1 group by date,breakfast order by count(*) desc";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            String query = "select date, lunch, count(*) as Votes from selectlunch1 group by date,lunch order by count(*) desc";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            String query = "select date,dinner, count(*) as Votes from selectdinner1 group by date,dinner order by count(*) desc";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            txtbdate.Text = row.Cells[0].Text;
            txtbreakfast.Text = row.Cells[1].Text;
            txtbvote.Text = row.Cells[2].Text;

            txtbreakfast.Text = (row.FindControl("breakfast") as Label ).Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into poll values(@pid, @date, @menu, @votes)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("pid", 1);

            cmd.Parameters.AddWithValue("date", txtbdate.Text);

            cmd.Parameters.AddWithValue("menu", txtbreakfast.Text);

            cmd.Parameters.AddWithValue("votes", txtbvote.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
            cmd.ExecuteNonQuery();
            txtbdate.Text = "";
            txtbreakfast.Text = "";
            txtbvote.Text = "";
            con.Close();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView2.SelectedRow;
            txtldate.Text = row.Cells[0].Text;
            txtlunch.Text = row.Cells[1].Text;
            txtlvote.Text = row.Cells[2].Text;

            txtlunch.Text = (row.FindControl("lunch") as Label).Text;
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into poll values(@pid, @date, @menu, @votes)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("pid", 2);
            cmd.Parameters.AddWithValue("date", txtldate.Text);

            cmd.Parameters.AddWithValue("menu", txtlunch.Text);

            cmd.Parameters.AddWithValue("votes", txtlvote.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
            cmd.ExecuteNonQuery();
            txtldate.Text = "";
            txtlunch.Text = "";
            txtlvote.Text = "";
            con.Close();
        }

        protected void GridView3_SelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView3.SelectedRow;
            txtddate.Text = row.Cells[0].Text;
            txtdinner.Text = row.Cells[1].Text;
            txtdvote.Text = row.Cells[2].Text;
            txtdinner.Text = (row.FindControl("dinner") as Label).Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into poll values(@pid, @date, @menu, @votes)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("pid", 3);
            cmd.Parameters.AddWithValue("date", txtddate.Text);

            cmd.Parameters.AddWithValue("menu", txtdinner.Text);

            cmd.Parameters.AddWithValue("votes", txtdvote.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
            cmd.ExecuteNonQuery();
            txtddate.Text = "";
            txtdinner.Text = "";
            txtdvote.Text = "";
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from selectbreakfast1";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from selectlunch1";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from selectdinner1";
            String query1 = "delete from poll";

            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd1 = new SqlCommand(query1, con);


            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();

            con.Close();
        }

        //protected void Button10_Click(object sender, EventArgs e)
        //{
        //    string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
        //    SqlConnection con = new SqlConnection(cs);
        //    con.Open();

        //    String query = "delete from poll";
        //    SqlCommand cmd = new SqlCommand(query, con);

        //    cmd.ExecuteNonQuery();

        //    con.Close();
        //}
    }
}