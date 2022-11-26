using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                HyperLink5.Visible = true;
                username.Visible = false;
                Panel10.Visible = false;
            }
            else
            {
                HyperLink5.Visible = false;
                Panel10.Visible = true;
                username.Text = Session["username"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Panel15.Visible == true)
            {
                Panel15.Visible = false;
            }
            else
            {
                Panel15.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}