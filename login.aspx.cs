using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

       
           
            
              
      
        
        protected void Button1_Click1(object sender, EventArgs e)
        
            {
          //  SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ada = new SqlDataAdapter();
            DataSet ds = new DataSet();

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();



            SqlCommand cmd = new SqlCommand("select * from tbl_signup where email=@user and password=@pass", con);


            cmd.Parameters.AddWithValue("@user", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {



                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                int a = ((Int32)(reader["id"]));
                Session["id"] = a;
                string b = reader["fname"].ToString();
                Session["fname"] = b;
                string c = reader["lname"].ToString();
                Session["lname"] = c;
                string d = reader["email"].ToString();
                Session["email"] = d;
                string f = reader["password"].ToString();
                Session["password"] = f;
                string g = reader["cpassword"].ToString();
                Session["cpassword"] = g;
                string h = reader["address"].ToString();
                Session["address"] = h;
                string i = reader["age"].ToString();
                Session["age"] = i;
                string j = reader["phone#"].ToString();
                Session["phone#"] = j;
                string k = reader["gender"].ToString();
                Session["gender"] = k;
                Label1.Text = "successfully Login";
                reader.Close();
            }
            else
            {
               Response.Write( "Invalid User or Password !!");
            }





        }

        }
    
}