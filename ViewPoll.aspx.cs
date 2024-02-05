using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class ViewPoll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["rno"].ToString();
            

        }

        protected void TextBox1_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select menu from poll where pid=1";
         
            SqlCommand cmd = new SqlCommand(query, con);
            TextBox1.Text = cmd.ExecuteScalar().ToString();
            //SqlDataReader reader = cmd.ExecuteReader(); 
            con.Close();
        }


        protected void Label2_Load(object sender, EventArgs e)
        {
            
                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

                SqlConnection con = new SqlConnection(cs);
                con.Open();

                String query = "select date from poll where pid=1";
                SqlCommand cmd = new SqlCommand(query, con);
                Label2.Text = cmd.ExecuteScalar().ToString();
                con.Close();
            
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Poll not generated. Please vote first....')", true);
            //    Response.Redirect("view_menu.aspx");

            //}
        }





        protected void Label5_Load(object sender, EventArgs e)
        {
            
                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

                SqlConnection con = new SqlConnection(cs);
                con.Open();

                String query = "select date from poll where pid=2";
                SqlCommand cmd = new SqlCommand(query, con);
                Label5.Text = cmd.ExecuteScalar().ToString();
                con.Close();
            
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Poll not generated. Please vote first....')", true);
            //    Response.Redirect("view_menu.aspx");

            //}
        }

        protected void TextBox2_Load1(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select menu from poll where pid=2";
            SqlCommand cmd = new SqlCommand(query, con);
            TextBox2.Text = cmd.ExecuteScalar().ToString();
            con.Close();
        }








        protected void Label7_Load(object sender, EventArgs e)
        {

            
                string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

                SqlConnection con = new SqlConnection(cs);
                con.Open();

                String query = "select date from poll where pid=3";
                SqlCommand cmd = new SqlCommand(query, con);
                Label7.Text = cmd.ExecuteScalar().ToString();
                con.Close();
            
            //catch (Exception ex)
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Poll not generated. Please vote first....')", true);
            //    Response.Redirect("view_menu.aspx");
            //}
        }

        protected void TextBox3_Load1(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select menu from poll where pid=3";
            SqlCommand cmd = new SqlCommand(query, con);
            TextBox3.Text = cmd.ExecuteScalar().ToString();
            con.Close();
        }

       
    }
}