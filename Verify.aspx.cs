using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Project1
{
    public partial class Verify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"];
            string hash = Request.QueryString["hash"];
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from [user] where email=@e;", con);
            cmd.Parameters.AddWithValue("@e", email.ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string dbhash = "";
            string verified = "";
            while (dr.Read())
            {
                dbhash = dr["hash"].ToString();
                verified = dr["verified"].ToString();
            }
            con.Close();
            if(verified == "1")
            {
                Response.Write("<script>alert('Your email id is already verified.');window.location = 'Home.aspx';</script>");
            }
            else
            {
                if (dbhash == hash.ToString())
                {
                    SqlCommand cmd1 = new SqlCommand("update [user] set verified=1 where email=@e;", con);
                    cmd1.Parameters.AddWithValue("@e", email.ToString());
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Your email id is now verified.');window.location = 'Home.aspx';</script>");
                }
            }
        }
    }
}