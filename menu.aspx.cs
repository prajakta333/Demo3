using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string breakfast = txtprice1.Text;
            string lunch = txtprice2.Text;
            string dinnner = txtprice3.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "update meal_type set price = case meal when 'breakfast' then '"+txtprice1.Text + "' end where meal in ('breakfast')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@price", txtprice1.Text);
          //  cmd.Parameters.AddWithValue("@price", txtprice2.Text);
          //  cmd.Parameters.AddWithValue("@price", txtprice3.Text);

            //cmd.Parameters.AddWithValue("quantity", txtquantity.Text);
            cmd.ExecuteNonQuery();
            txtprice1.Text = "";
            // txtprice2.Text = "";
            //  txtprice3.Text = "";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Price Updated Successfully. ')", true);

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string lunch = txtprice2.Text;
            //string dinnner = txtprice3.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "update meal_type set price = case meal when 'lunch' then '" + txtprice2.Text + "' end where meal in ('lunch')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@price", txtprice2.Text);
           
            cmd.ExecuteNonQuery();
            txtprice2.Text = "";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Price Updated Successfully. ')", true);


            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string dinnner = txtprice3.Text;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "update meal_type set price = case meal when 'dinnner' then '" + txtprice3.Text + "' end where meal in ('dinnner')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@price", txtprice3.Text);

            cmd.ExecuteNonQuery();
            txtprice3.Text = "";

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Price Updated Successfully. ')", true);

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
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
    }
}