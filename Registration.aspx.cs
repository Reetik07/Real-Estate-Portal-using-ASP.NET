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
using System.Security.Cryptography;
using System.Text;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;

namespace Project1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd1 = new SqlCommand("select * from [user] where email=@e", con);
            cmd1.Parameters.AddWithValue("@e", email.Text);
            con.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            string name = "";
            while (dr.Read())
            {
                name = dr["first_name"].ToString();
            }
            con.Close();
            if (name == "")
            {
                Random r = new Random();
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(r.Next(0, 1000).ToString());
                byte[] hashBytes = new MD5CryptoServiceProvider().ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                string hash = sb.ToString();
                /**
                MailMessage Msg = new MailMessage();
                Msg.From = new MailAddress("reetikgupta010@gmail.com");
                Msg.To.Add(email.Text);
                Msg.Subject = "Verification";
                Msg.Body = "Thanks for signing up!\nYour account has been created,\n" +
                    "you can login with the following credentials after you have activated your account by pressing the url below.\n" +
                    "------------------------\n" +
                    "Email Id: " + email.Text + "\n" +
                    "Password: " + password.Text + "\n" +
                    "------------------------\n" +
                    "Please click this link to activate your account:" + "\n" +
                    "https://localhost:44357/Verify.aspx?email=" + email.Text + "&hash=" + hash;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("reetikgupta010@gmail.com", "reetikcr07");
                smtp.EnableSsl = true;
                smtp.Send(Msg);**/
                var message = new MimeMessage();
                message.From.Add(new MailboxAddress("PropertyHunt", "reetikgupta010@gmail.com"));
                message.To.Add(new MailboxAddress("", email.Text));
                message.Subject = "Verification";

                message.Body = new TextPart("plain")
                {
                    Text = "Thanks for signing up!\nYour account has been created," + "\n" +
                    "you can login with the following credentials after you have activated your account by pressing the url below." + "\n" +
                    "------------------------" + "\n" +
                    "Email Id: " + email.Text + "\n" +
                    "Password: " + password.Text + "\n" +
                    "------------------------" + "\n" +
                    "Please click this link to activate your account:" + "\n" +
                    "https://localhost:44357/Verify.aspx?email=" + email.Text + "&hash=" + hash
                };
                using (var client = new SmtpClient())
                {
                    client.Connect("smtp.gmail.com", 587, false);

                    client.Authenticate("reetikgupta010@gmail.com", "reetikcr07");

                    client.Send(message);
                    client.Disconnect(true);
                }

                string date = day.SelectedValue.ToString() + "-" + month.SelectedValue.ToString() + "-" + year.SelectedValue.ToString();
                SqlCommand cmd = new SqlCommand("insert into [user](first_name, last_name, email, password, mobile, city, dob, secq, seca, hash, verified, shortlisted) values(@fn,@ln,@e,@p,@m,@c,@d,@sq,@sa, @h, 0, @sl)", con);
                cmd.Parameters.AddWithValue("@fn", first_name.Text);
                cmd.Parameters.AddWithValue("@ln", last_name.Text);
                cmd.Parameters.AddWithValue("@e", email.Text);
                cmd.Parameters.AddWithValue("@p", password.Text);
                cmd.Parameters.AddWithValue("@m", mobile.Text);
                cmd.Parameters.AddWithValue("@c", city.Text);
                cmd.Parameters.AddWithValue("@d", date);
                cmd.Parameters.AddWithValue("@sq", secquestion.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@sa", secanswer.Text);
                cmd.Parameters.AddWithValue("@h", hash);
                cmd.Parameters.AddWithValue("@sl", "");

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('You have been registered successfully! Check your mailbox to verify your email id.');window.location = 'Home.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('This email id is already registered.');window.location = 'Registration.aspx';</script>");
            }
        }
    }
}