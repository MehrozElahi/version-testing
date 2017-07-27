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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();



            SqlCommand cmd = new SqlCommand("select * from tbl_docsignup where email=@user and password=@pass", con);


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
                string b = reader["name"].ToString();
                Session["name"] = b;
                string c = reader["specialist"].ToString();
                Session["specialist"] = c;
                string d = reader["email"].ToString();
                Session["email"] = d;
                string f = reader["password"].ToString();
                Session["password"] = f;
                string g = reader["cnfirmpass"].ToString();
                Session["cnfirmpass"] = g;
                string h = reader["address"].ToString();
                Session["address"] = h;
                string i = reader["age"].ToString();
                Session["age"] = i;
                string j = reader["phone"].ToString();
                Session["phone"] = j;
                string k = reader["gender"].ToString();
                Session["gender"] = k;
                string l = reader["hname"].ToString();
                Session["hname"] = l;
                Label1.Text = "successfully Login";
                reader.Close();
            }
            else
            {
                Response.Write("Invalid User or Password !!");
            }





        }
    }
}