using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
//using System.Net;
//using System.Net.Mail;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;

namespace Project1
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        static string seca, email, pwd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel5.Visible = true;
            Panel9.Visible = false;
            Panel14.Visible = false;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from [user] where email=@e;", con);
            cmd.Parameters.AddWithValue("@e", fpemail.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    fpsecq.Text = "Security Question: "+dr["secq"].ToString();
                    seca = dr["seca"].ToString();
                    email = dr["email"].ToString();
                    pwd = dr["password"].ToString();
                }
                Panel5.Visible = false;
                Panel9.Visible = true;
                Panel14.Visible = false;
            }
            else
            {
                if (fpemail.Text.Length > 0)
                {
                    Label1.Text = "Email ID not registered";
                }
                Panel5.Visible = true;
                Panel9.Visible = false;
                Panel14.Visible = false;
                fpemail.Text = "";
                fpemail.Focus();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            if (fpseca.Text == seca)
            {
                Panel5.Visible = false;
                Panel9.Visible = false;
                Panel14.Visible = true;
                try
                {
                    /**
                    MailMessage Msg = new MailMessage();
                    Msg.From = new MailAddress("reetikgupta010@gmail.com");
                    Msg.To.Add(email);
                    Msg.Subject = "Password Recovery";
                    Msg.Body = "Dear user,\nWe have come across that you have forgotten your password and have tried to recover it.\n" +
                        "Given below is your login password:\n" + pwd;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("reetikgupta010@gmail.com", "reetikcr07");
                    smtp.EnableSsl = true;
                    smtp.Send(Msg);
                    Msg = null;
                    **/
                    var message = new MimeMessage();
                    message.From.Add(new MailboxAddress("PropertyHunt", "reetikgupta010@gmail.com"));
                    message.To.Add(new MailboxAddress("", email));
                    message.Subject = "Password Recovery";

                    message.Body = new TextPart("plain")
                    {
                        Text = "Dear user," + "\n" + 
                        "We have come across that you have forgotten your password and have tried to recover it." + "\n" +
                        "Given below is your login password:" + "\n" + pwd
                    };
                    using (var client = new SmtpClient())
                    {
                        client.Connect("smtp.gmail.com", 587, false);

                        client.Authenticate("reetikgupta010@gmail.com", "reetikcr07");

                        client.Send(message);
                        client.Disconnect(true);
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine("{0} Exception caught.", ex);
                }
            }
            else
            {
                if(fpseca.Text.Length > 0)
                {
                    Label2.Text = "Incorrect answer";
                }
                Panel5.Visible = false;
                Panel9.Visible = true;
                Panel14.Visible = false;
                Label2.Text = "Incorrect security answer.";
                fpseca.Text = "";
                fpseca.Focus();
            }
        }
    }
}