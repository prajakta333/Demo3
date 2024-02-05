using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

namespace Demo3
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string fname = Session["fname"].ToString();
            //Label1.Text = fname;
            string rno = Session["rno"].ToString();
            Label2.Text = rno;
            findorderdate(Label2.Text);

            showgrid(Label2.Text);
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // base.VerifyRenderingInServerForm(control);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=FeeReceipt.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        private void findorderdate(String rno)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from registration where rno='" + Label2.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["rno"].ToString();
            }
            con.Close();
        }

        private void showgrid(String rno)
        {
            //DataTable dt = new DataTable();
            //DataRow dr;
            //dt.Columns.Add("sid");
            //dt.Columns.Add("rno");
            //dt.Columns.Add("fname");
            //dt.Columns.Add("lname");
            //SqlConnection scon = new SqlConnection("Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True");
            //SqlCommand cmd = new SqlCommand("Select * from registration where rno='" + Label2.Text + "'");
            //cmd.Connection = scon;
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            ////int totalrows = ds.Tables[0].Rows.Count;
            //int i = 0;
            //while (i < 3)
            //{
            //    dr = dt.NewRow();
            //    dr["sid"] = ds.Tables[0].Rows[i]["sid"].ToString();
            //    dr["rno"] = ds.Tables[0].Rows[i]["rno"].ToString();
            //    dr["fname"] = ds.Tables[0].Rows[i]["fname"].ToString();
            //    dr["lname"] = ds.Tables[0].Rows[i]["lname"].ToString();

            //}
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //Label4.Text = rno.ToString();

            Label2.Text = Session["rno"].ToString();

            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select meal, price from meal_type;";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void Label6_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select fname from registration where rno='"+ Label2.Text+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            Label6.Text = cmd.ExecuteScalar().ToString();

            con.Close();
        }

        protected void Label7_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select lname from registration where rno='" + Label2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            Label7.Text = cmd.ExecuteScalar().ToString();

            con.Close();
        }

        protected void Label3_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select course from registration where rno='" + Label2.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            Label3.Text = cmd.ExecuteScalar().ToString();

            con.Close();
        }

   

        protected void Label4_Load(object sender, EventArgs e)
        {
            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";

            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "select SUM(price) from meal_type";
            SqlCommand cmd = new SqlCommand(query, con);
            Label4.Text = cmd.ExecuteScalar().ToString();

            con.Close();
        }
    }
}