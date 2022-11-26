using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project1
{
    public partial class ShortlistSale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            RepeaterData();
        }
        public void RepeaterData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from [user] where email=@e", con);
            cmd.Parameters.AddWithValue("@e", Session["email"].ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string shortlisted = "";
            while (dr.Read())
            {
                shortlisted = dr["shortlisted"].ToString();
            }
            con.Close();
            string[] l = shortlisted.Split();
            string query = "(";
            int count = 0;
            foreach(var item in l)
            {
                if (item.Contains("r"))
                {
                    continue;
                }
                if (item == "")
                {
                    break;
                }
                if (count != 0)
                {
                    query += ",";
                }
                count = 1;
                query += item[1].ToString();
            }
            query += ")";
            if (query == "()")
            {
                Panel22.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel22.Visible = false;
                Panel2.Visible = true;
                SqlCommand cmd1 = new SqlCommand("select * from propertyforsale where pfsid IN " + query + ";", con);
                con.Open();
                Repeater1.DataSource = cmd1.ExecuteReader();
                Repeater1.DataBind();
                con.Close();
            }
        }
        public void Product()
        {
            Response.Redirect("Product.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShortlistSale.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShortlistRent.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Button button = (sender as Button);
            string s = button.CommandArgument;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from [user] where email=@e", con);
            cmd.Parameters.AddWithValue("@e", Session["email"].ToString());
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string shortlisted = "";
            while (dr.Read())
            {
                shortlisted = dr["shortlisted"].ToString();
            }
            con.Close();
            shortlisted = shortlisted.Replace("s" + s + " ", "");
            SqlCommand cmd3 = new SqlCommand("update [user] set shortlisted = @sl where id = @uid;", con);
            cmd3.Parameters.AddWithValue("@sl", shortlisted);
            cmd3.Parameters.AddWithValue("@uid", Session["userid"].ToString());
            con.Open();
            cmd3.ExecuteNonQuery();
            con.Close();
            RepeaterData();
        }
    }
}