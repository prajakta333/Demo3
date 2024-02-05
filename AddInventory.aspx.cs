using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Demo3
{
    public partial class AddInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string item = txtitem.Text;
            string quantity = txtquantity.Text;
            string date = DnTtxt.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into inventory values(@date, @item, @quantity)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("date", DnTtxt.Text);

            cmd.Parameters.AddWithValue("item", txtitem.Text);
            cmd.Parameters.AddWithValue("quantity", txtquantity.Text);
            cmd.ExecuteNonQuery();
            txtitem.Text = "";
            txtquantity.Text = "";

            con.Close();

        }

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    string date = DnTtxt.Text;
        //    DnTtxt.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible=false;
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Calendar1.Visible=true;
        //}

        protected void Button3_Click(object sender, EventArgs e)
        {
           
                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);
                con.Open();

                String query = "select * from inventory order by date";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                con.Close();
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "delete from inventory";
            SqlCommand cmd = new SqlCommand(query, con);

           
            cmd.ExecuteNonQuery();
            

            con.Close();
            

        }
    }
}