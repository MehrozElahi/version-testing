using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Session["name"].ToString();
            p_id.Text = Session["id"].ToString();
            
            age.Text = Session["age"].ToString();
            Label4.Text = Session["specialist"].ToString();
            gender.Text = Session["gender"].ToString();
            address.Text = Session["address"].ToString();
            city.Text = Session["hname"].ToString();
            number.Text = Session["phone"].ToString();
            email.Text = Session["email"].ToString();
            string a = Session["id"].ToString();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("select img from tbl_signup where id='" + a + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string b = reader["img"].ToString();
            reader.Close();

            imggg.Src = "images/" + b;
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = Session["id"].ToString();
            string imgnames = FileUpload2.FileName;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images/") + imgnames);

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("Update tbl_docsignup Set img=@m Where id='" + a + "'", con);
            cmd.Parameters.AddWithValue("@m", imgnames);
            cmd.ExecuteNonQuery();
            Response.Redirect("d profile.aspx");
            con.Close();
        }
    }
}