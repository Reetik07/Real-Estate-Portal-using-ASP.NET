using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request.QueryString["type"];
            string id = Request.QueryString["id"];
            string table = "";
            string pid = "";
            if (type == "sale")
            {
                table = "propertyforsale";
                pid = "pfsid";
            }
            else
            {
                table = "propertyforrent";
                pid = "pfrid";
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from " + table + " where " + pid + "=@id;", con);
            cmd.Parameters.AddWithValue("@id", int.Parse(id));
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string userid = "";
            string city = "";
            string locality = "";
            string bedrooms = "";
            string carpet_area = "";
            string furnished_status = "";
            string floor = "";
            string total_floor = "";
            string address = "";
            string price = "";
            string token = "";
            string tenants_preferred = "";

            while (dr.Read())
            {
                userid = dr["userid"].ToString();
                city = dr["city"].ToString();
                locality = dr["locality"].ToString();
                bedrooms = dr["bedrooms"].ToString();
                carpet_area = dr["carpet_area"].ToString();
                furnished_status = dr["furnished_status"].ToString();
                floor = dr["floor"].ToString();
                total_floor = dr["total_floor"].ToString();
                address = dr["address"].ToString();
                if (type == "sale")
                {
                    price = dr["price"].ToString();
                    token = dr["token"].ToString();
                }
                else
                {
                    price = dr["rental_value"].ToString();
                    token = dr["security_deposit"].ToString();
                    tenants_preferred = dr["tenants_preferred"].ToString();
                }
            }
            con.Close();

            SqlCommand cmd2 = new SqlCommand("select * from [user] where id=@userid;", con);
            cmd2.Parameters.AddWithValue("@userid", userid);
            con.Open();
            SqlDataReader dr2 = cmd2.ExecuteReader();
            string name = "";
            string email = "";
            string mobile = "";
            while (dr2.Read())
            {
                name = dr2["first_name"].ToString() + " " + dr2["last_name"];
                email = dr2["email"].ToString();
                mobile = dr2["mobile"].ToString();
            }
            con.Close();

            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                /**
                MailMessage Msg = new MailMessage();
                Msg.From = new MailAddress("reetikgupta010@gmail.com");
                Msg.To.Add(Session["email"].ToString());
                Msg.Subject = "Contact Information";
                Msg.Body = "Hello user,\n" +
                    "The info of " + bedrooms + "BHK property you are interested in is listed below with the property owner's info:\n" +
                    "----------------------------------\n" +
                    "Price: " + price + "\n" +
                    "Locality: " + locality + "\n" +
                    "City: " + city + "\n" +
                    "Address: " + address + "\n" +
                    "Carpet Area: " + carpet_area + "\n" +
                    "Furnished Status: " + furnished_status + "\n" +
                    "Floor: " + floor + " (Out of " + total_floor + " floors)\n" +
                    "\n" +
                    "Property owner details:\n" +
                    "Name: " + name + "\n" +
                    "Email Id: " + email + "\n" +
                    "Mobile No.: " + mobile + "\n" +
                    "------------------------";
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("reetikgupta010@gmail.com", "reetikcr07");
                smtp.EnableSsl = true;
                smtp.Send(Msg);**/
                var message = new MimeMessage();
                message.From.Add(new MailboxAddress("PropertyHunt", "reetikgupta010@gmail.com"));
                message.To.Add(new MailboxAddress("", Session["email"].ToString()));
                message.Subject = "Contact Information";

                message.Body = new TextPart("plain"){
                    Text = "Hello user," + "\n" +
                    "The info of " + bedrooms + "BHK property you are interested in is listed below with the property owner's info:" + "\n" +
                    "----------------------------------" + "\n" +
                    "Price: " + price + "\n" +
                    "Locality: " + locality + "\n" +
                    "City: " + city + "\n" +
                    "Address: " + address + "\n" +
                    "Carpet Area: " + carpet_area + "\n" +
                    "Furnished Status: " + furnished_status + "\n" +
                    "Floor: " + floor + " (Out of " + total_floor + " floors)" + "\n" +
                    "\n" +
                    "Property owner details:" + "\n" +
                    "Name: " + name + "\n" +
                    "Email Id: " + email + "\n" +
                    "Mobile No.: " + mobile + "\n" +
                    "------------------------"
                };
                using (var client = new SmtpClient())
                {
                    client.Connect("smtp.gmail.com", 587, false);

                    client.Authenticate("reetikgupta010@gmail.com", "reetikcr07");

                    client.Send(message);
                    client.Disconnect(true);
                }

                SqlCommand cmd3 = new SqlCommand("select * from [user] where id=@userid;", con);
                cmd3.Parameters.AddWithValue("@userid", Session["userid"]);
                con.Open();
                SqlDataReader dr3 = cmd3.ExecuteReader();
                string name1 = "";
                string email1 = "";
                string mobile1 = "";
                while (dr3.Read())
                {
                    name1 = dr3["first_name"].ToString() + " " + dr3["last_name"];
                    email1 = dr3["email"].ToString();
                    mobile1 = dr3["mobile"].ToString();
                }
                con.Close();
                /**
                MailMessage Msg1 = new MailMessage();
                Msg1.From = new MailAddress("reetikgupta010@gmail.com");
                Msg1.To.Add(Session["email"].ToString());
                Msg1.Subject = "Contact Information";
                Msg1.Body = "Hello user,\n" +
                    "It seems that someone wants to contact you regarding the property you posted on the website, have a look at the details of the interested person.\n" +
                    "--------------------------------\n" +
                    "Interested user details:\n" +
                    "Name: " + name1 + "\n" +
                    "Email Id: " + email1 + "\n" +
                    "Mobile No.: " + mobile1 + "\n" +
                    "-------------------------------";
                SmtpClient smtp1 = new SmtpClient();
                smtp1.Host = "smtp.gmail.com";
                smtp1.Port = 587;
                smtp1.Credentials = new System.Net.NetworkCredential("reetikgupta010@gmail.com", "reetikcr07");
                smtp1.EnableSsl = true;
                smtp1.Send(Msg1);**/
                var message1 = new MimeMessage();
                message1.From.Add(new MailboxAddress("PropertyHunt", "reetikgupta010@gmail.com"));
                message1.To.Add(new MailboxAddress("", Session["email"].ToString()));
                message1.Subject = "Contact Information";

                message1.Body = new TextPart("plain")
                {
                    Text = "Hello user," + "\n" +
                    "It seems that someone wants to contact you regarding the property you posted on the website, have a look at the details of the interested person." + "\n" +
                    "--------------------------------" + "\n" +
                    "Interested user details:" + "\n" +
                    "Name: " + name1 + "\n" +
                    "Email Id: " + email1 + "\n" +
                    "Mobile No.: " + mobile1 + "\n" +
                    "-------------------------------"
                };
                using (var client1 = new SmtpClient())
                {
                    client1.Connect("smtp.gmail.com", 587, false);

                    client1.Authenticate("reetikgupta010@gmail.com", "reetikcr07");

                    client1.Send(message1);
                    client1.Disconnect(true);
                }
                Response.Write("<script>alert('An email has been sent containing the owner details.');window.location = 'Home.aspx';</script>");
            }
        }
    }
}