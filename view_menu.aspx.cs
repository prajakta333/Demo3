using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

namespace Demo3
{
    public partial class view_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["rno"].ToString();

        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView2.SelectedRow;
            txtbdate.Text = row.Cells[0].Text;
            txtbname.Text = row.Cells[1].Text;
            txtbname.Text = (row.FindControl("bname") as Label).Text;


        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from breakfast order by bdate";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into selectbreakfast1 values(@rno, @date, @breakfast)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("rno", Label1.Text);

            cmd.Parameters.AddWithValue("date", txtbdate.Text);

            cmd.Parameters.AddWithValue("breakfast", txtbname.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
            cmd.ExecuteNonQuery();
            txtbdate.Text = "";
            txtbname.Text = "";
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into selectlunch1 values(@rno, @date, @lunch)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("rno", Label1.Text);

            cmd.Parameters.AddWithValue("date", txtldate.Text);

            cmd.Parameters.AddWithValue("lunch", txtlname.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
                cmd.ExecuteNonQuery();
            txtldate.Text = "";
            txtlname.Text = "";
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into selectdinner1 values(@rno, @date, @dinner)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("rno", Label1.Text);

            cmd.Parameters.AddWithValue("date", txtddate.Text);

            cmd.Parameters.AddWithValue("dinner", txtdname.Text);

            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i = 
            cmd.ExecuteNonQuery();
            txtddate.Text = "";
            txtdname.Text = "";
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
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


        protected void OnSelectedIndexChanged2(object sender, EventArgs e)
        {
            GridViewRow row = GridView3.SelectedRow;
            txtddate.Text = row.Cells[0].Text;
            txtdname.Text = row.Cells[1].Text;
            txtdname.Text = (row.FindControl("dname") as Label).Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select * from lunch order by ldate";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void OnSelectedIndexChanged1(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            txtldate.Text = row.Cells[0].Text;
            txtlname.Text = row.Cells[1].Text;
            txtlname.Text = (row.FindControl("lname") as Label).Text;
        }



        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    string date = datetxt.Text;
        //    datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}

        //protected void Button6_Click(object sender, EventArgs e)
        //{
        //    Calendar1.Visible = true;

        //}


    }
}