using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo3
{
    public partial class temp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rno = txtrno.Text;
            string fname = txtfname.Text;

            string lname = txtlname.Text;
            string gender = RadioButtonList1.SelectedValue;
            string mobile = txtmobile.Text;

            string address = txtaddress.Text;
            string country = txtcountry.Text;
            string state = txtstate.Text;
            string city = txtcity.Text;
            string pincode = txtpincode.Text;
            string course = DropDownList1.SelectedValue;
            string cyear = DropDownList2.SelectedValue;
            string email = txtemail.Text;

            string password = txtpassword.Text;





            string cs = "Data Source=LAPTOP-V0F9MV7L\\SQLEXPRESS;Initial Catalog=DemoDB1;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            String query = "insert into registration values (@rno, @fname, @lname, @gender, @mobile, @address, @country, @state, @city, @pincode, @course, @cyear, @email, @password)";
            String query1 = "select count(*) from[registration] where rno= '" + txtrno.Text + "' or mobile='" + txtmobile.Text + "' or email='" + txtemail.Text + "' or password='" + txtpassword.Text + "'";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            //if (temp == 1)
            //{

            try { 

            
               
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("rno", txtrno.Text);
                    cmd.Parameters.AddWithValue("fname", txtfname.Text);
                    cmd.Parameters.AddWithValue("lname", txtlname.Text);
                    cmd.Parameters.AddWithValue("gender", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("mobile", txtmobile.Text);
                    cmd.Parameters.AddWithValue("address", txtaddress.Text);
                    cmd.Parameters.AddWithValue("country", txtcountry.Text);
                    cmd.Parameters.AddWithValue("state", txtstate.Text);
                    cmd.Parameters.AddWithValue("city", txtcity.Text);
                    cmd.Parameters.AddWithValue("pincode", txtpincode.Text);
                    cmd.Parameters.AddWithValue("course", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("cyear", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("email", txtemail.Text);
                    cmd.Parameters.AddWithValue("password", txtpassword.Text);

                    cmd.ExecuteNonQuery();

                    //  Label7.Visible = true;
                    //  Label7.Text = "User registered successfully";
                    txtrno.Text = "";
                    txtfname.Text = "";
                    txtlname.Text = "";
                    RadioButtonList1.SelectedValue = null;
                    txtmobile.Text = "";
                    txtaddress.Text = "";
                //   Label12.Text = "";
                    txtcountry.Text = "";
                    txtstate.Text = "";
                    txtcity.Text = "";
                    txtpincode.Text = "";
                    DropDownList1.SelectedValue = null;
                    DropDownList2.SelectedValue = null;
                    txtemail.Text = "";
                    txtpassword.Text = "";

                    txtrno.Focus();

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Successfully Account Created. Now Please Login. ')", true);
                    con.Close();
                
            }
           

            //else
            //{


            //}
             
            catch(Exception ex)
            {
                //  if ((!String.IsNullOrEmpty(rno) && !String.IsNullOrEmpty(fname) && !String.IsNullOrEmpty(lname) && !String.IsNullOrEmpty(gender) && !String.IsNullOrEmpty(mobile) && !String.IsNullOrEmpty(address) && !String.IsNullOrEmpty(country) && !String.IsNullOrEmpty(state) && !String.IsNullOrEmpty(city) && !String.IsNullOrEmpty(pincode) && !String.IsNullOrEmpty(course) && !String.IsNullOrEmpty(cyear) && !String.IsNullOrEmpty(email) && !String.IsNullOrEmpty(password)))
                if ((!String.IsNullOrEmpty(rno) && !String.IsNullOrEmpty(mobile) && !String.IsNullOrEmpty(email) && !String.IsNullOrEmpty(password)))

                {
                    if (temp == 1)
                    {


                        ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Duplicate Roll No, mobile no, email id or password OR User is already registered')", true);



                    }
                    
                }
                }

            //   txtname.Text = "";

        }

    }
}
    
