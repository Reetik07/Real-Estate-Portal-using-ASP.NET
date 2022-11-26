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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from [user] where email=@e", con);
            cmd.Parameters.AddWithValue("@e", loginemail.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string pwd = "";
            string first_name = "";
            string last_name = "";
            string verified = "";
            int uid = 0;
            while (dr.Read())
            {
                pwd = dr["password"].ToString();
                first_name = dr["first_name"].ToString();
                last_name = dr["last_name"].ToString();
                uid = int.Parse(dr["id"].ToString());
                verified = dr["verified"].ToString();
            }
            con.Close();

            if (pwd == loginpassword.Text)
            {
                if(verified == "1")
                {
                    Session["email"] = loginemail.Text;
                    Session["password"] = loginpassword.Text;
                    Session["username"] = first_name + " " + last_name;
                    Session["userid"] = uid;
                    Response.Redirect("Home.aspx");
                    wrongcredmsg.Visible = false;
                }
                else
                {
                    wrongcredmsg.Text = "Email ID is not verified";
                    wrongcredmsg.Visible = true;
                }
            }
            else
            {
                wrongcredmsg.Text = "Incorrect Email ID or Password";
                wrongcredmsg.Visible = true;
                loginemail.Text = "";
                loginpassword.Text = "";
            }
        }
    }
}