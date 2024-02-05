using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class attendance : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
           Label1.Text = Session["rno"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = datetxt.Text;

            string attendance = RadioButtonList1.SelectedValue;

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into attendance1 values(@rno, @date, @flg)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("rno", Label1.Text);

            cmd.Parameters.AddWithValue("date", datetxt.Text);

            cmd.Parameters.AddWithValue("flg", RadioButtonList1.SelectedValue);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //int i =
            cmd.ExecuteNonQuery();
            datetxt.Text = "";

            con.Close();
            
        }

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    string date = datetxt.Text;
        //    datetxt.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{

        //    Calendar1.Visible = true;
        //}
        }
    }