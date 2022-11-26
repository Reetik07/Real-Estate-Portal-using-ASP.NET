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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from [user] where email=@e", con);
            cmd.Parameters.AddWithValue("@e", Session["email"].ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string pwd = "";
            while (dr.Read())
            {
                pwd = dr["password"].ToString();
            }
            con.Close();
            con.Open();
            if (cpop.Text == pwd)
            {
                SqlCommand cmd1 = new SqlCommand("update [user] set password=@p where email=@e;", con);
                cmd1.Parameters.AddWithValue("@p", cpnpwd.Text);
                cmd1.Parameters.AddWithValue("@e", Session["email"].ToString());
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('Password changed successfully!');</script>");
            }
            else
            {
                Label1.Visible = true;
            }
            con.Close();

        }
    }
}