using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;


namespace Project1
{
    public partial class Product : System.Web.UI.Page
    {
        List<string> list = new List<string>();
        public static int current = 0;
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
            SqlCommand cmd = new SqlCommand("select * from "+ table +" where "+ pid +"=@id;", con);
            cmd.Parameters.AddWithValue("@id", int.Parse(id));
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            string userid = "";
            string property_type = "";
            string transaction_type = "";
            string property_status = "";
            string city = "";
            string locality = "";
            string bedrooms = "";
            string bathrooms = "";
            string balconies = "";
            string store_rooms = "";
            string built_up_area = "";
            string carpet_area = "";
            string parking_slots = "";
            string parking_type = "";
            string age = "";
            string furnished_status = "";
            string floor = "";
            string total_floor = "";
            string address = "";
            string price = "";
            string token = "";
            string tenants_preferred = "";
            string description = "";
            string date = "";
            string loc = "";
            while (dr.Read())
            {
                userid = dr["userid"].ToString();
                property_type = dr["property_type"].ToString();
                transaction_type = dr["transaction_type"].ToString();
                property_status = dr["property_status"].ToString();
                city = dr["city"].ToString();
                locality = dr["locality"].ToString();
                bedrooms = dr["bedrooms"].ToString();
                bathrooms = dr["bathrooms"].ToString();
                balconies = dr["balconies"].ToString();
                store_rooms = dr["store_rooms"].ToString();
                built_up_area = dr["built_up_area"].ToString();
                carpet_area = dr["carpet_area"].ToString();
                parking_slots = dr["parking_slots"].ToString();
                parking_type = dr["parking_type"].ToString();
                age = dr["age"].ToString();
                furnished_status = dr["furnished_status"].ToString();
                floor = dr["floor"].ToString();
                total_floor = dr["total_floor"].ToString();
                address = dr["address"].ToString();
                if (type == "sale")
                {
                    price = dr["price"].ToString();
                    token = dr["token"].ToString();
                    loc = "Images/";
                }
                else
                {
                    price = dr["rental_value"].ToString();
                    token = dr["security_deposit"].ToString();
                    tenants_preferred = dr["tenants_preferred"].ToString();
                    loc = "Rent/Images/";
                }
                description = dr["description"].ToString();
                date = dr["date"].ToString();
            }
            con.Close();

            SqlCommand cmd1 = new SqlCommand("select * from [user] where id=@userid;", con);
            cmd1.Parameters.AddWithValue("@userid", int.Parse(userid));
            con.Open();
            SqlDataReader dr1 = cmd1.ExecuteReader();
            string owner = "";
            while (dr1.Read())
            {
                owner = dr1["first_name"].ToString() + " " + dr1["last_name"].ToString();
            }
            con.Close();

            String[] str = list.ToArray();
            //Hall
            System.IO.DirectoryInfo dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/Hall/");
            int count = dir.GetFiles().Length;
            for (int i = 1; i <= count; i++)
            {
                list.Add(loc + id + "/Hall/HallImage" + i + ".jpg");
            }
            //Bedroom
            if (bedrooms != "0")
            {
                dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/Bedroom/");
                count = dir.GetFiles().Length;
                for (int i = 1; i <= count; i++)
                {
                    list.Add(loc + id + "/Bedroom/BedroomImage" + i + ".jpg");
                }
            }
            //Kitchen
            dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/Kitchen/");
            count = dir.GetFiles().Length;
            for (int i = 1; i <= count; i++)
            {
                list.Add(loc + id + "/Kitchen/KitchenImage" + i + ".jpg");
            }
            //Bathroom
            dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/Bathroom/");
            count = dir.GetFiles().Length;
            for (int i = 1; i <= count; i++)
            {
                list.Add(loc + id + "/Bathroom/BathroomImage" + i + ".jpg");
            }
            //Balconies
            if (balconies != "0")
            {
                dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/Balcony/");
                count = dir.GetFiles().Length;
                for (int i = 1; i <= count; i++)
                {
                    list.Add(loc + id + "/Balcony/BalconyImage" + i + ".jpg");
                }
            }
            //Store rooms
            //Balconies
            if (store_rooms != "0")
            {
                dir = new System.IO.DirectoryInfo(Server.MapPath("~") + loc + id + "/StoreRoom/");
                count = dir.GetFiles().Length;
                for (int i = 1; i <= count; i++)
                {
                    list.Add(loc + id + "/StorRoom/StoreRoomImage" + i + ".jpg");
                }
            }
            //Image1.ImageUrl = list[0];
            Panel8.BackImageUrl = list[0];
            if (current == 0)
            {
                ImageButton3.Visible = false;
            }
            if(property_type == "Flat /Apartment")
            {
                Label3.Text = bedrooms + " BHK Flat";
            }
            else
            {
                Label3.Text = bedrooms + " BHK Residential House";
            }
            Label4.Text = "for rent in " + locality + ", " + city;
            if (type == "sale")
            {
                Label5.Text = "₹ ";
                Label5.Text += price.Length >= 8 ? (float.Parse(price) / 10000000).ToString("0.00") + " Cr" : (float.Parse(price) / 100000).ToString("0.00") + " Lac";
            }
            else
            {
                Label5.Text = "₹ ";
                Label5.Text += price.Length >= 6 ? (float.Parse(price) / 100000).ToString("0.00") + " Lac" : price;
            }
            Label6.Text = carpet_area + " sqft";
            if(bedrooms == "1")
            {
                Label7.Text = bedrooms + " Bedroom";
            }
            else
            {
                Label7.Text = bedrooms + " Bedrooms";
            }
            if (bathrooms == "1")
            {
                Label12.Text = bathrooms + " Bathroom";
            }
            else
            {
                Label12.Text = bathrooms + " Bathrooms";
            }
            Label9.Text = owner;
            Label13.Text = bedrooms;
            Label15.Text = bathrooms;
            Label17.Text = balconies;
            Label19.Text = store_rooms;
            Label25.Text = built_up_area + " sqft";
            Label27.Text = carpet_area + " sqft";
            Label21.Text = property_status;
            Label23.Text = transaction_type;
            Label29.Text = floor + " (Out of "+ total_floor +" Floors)";
            Label31.Text = parking_slots + " (" + parking_type + ")";
            Label53.Text = description;
            if (type == "sale")
            {
                Label32.Text = "₹ ";
                Label32.Text += price.Length >= 8 ? (float.Parse(price) / 10000000).ToString("0.00") + " Cr" : (float.Parse(price) / 100000).ToString("0.00") + " Lac";
                Label34.Text = "₹ ";
                Label34.Text += token.Length >= 8 ? (float.Parse(token) / 10000000).ToString("0.00") + " Cr" : (float.Parse(token) / 100000).ToString("0.00") + " Lac";
            }
            else
            {
                Label32.Text = "₹ ";
                Label32.Text += price.Length >= 6 ? (float.Parse(price) / 100000).ToString("0.00") + " Lac" : price;
                Label34.Text = "₹ ";
                Label34.Text += token.Length >= 6 ? (float.Parse(token) / 100000).ToString("0.00") + " Lac" : token;
            }
            
            Label36.Text = address;
            if (age == "1")
            {
                Label38.Text = age + " year";
            }
            else
            {
                Label38.Text = age + " years";
            }
            
            Label40.Text = furnished_status;
            if (type == "sale")
            {
                Label55.Text = "Price";
                Label33.Text = "Booking Amount";
                Panel70.Visible = false;
            }
            else
            {
                Label55.Text = "Rental Value";
                Label33.Text = "Security Deposit Amount";
                Panel70.Visible = true;
                Label2.Text = tenants_preferred;
            }
            if (Session["email"] == null)
            {
                Button2.Text = "Shortlist";
            }
            else
            {
                SqlCommand cmd5 = new SqlCommand("select * from [user] where id=@userid;", con);
                cmd5.Parameters.AddWithValue("@userid", Session["userid"]);
                con.Open();
                SqlDataReader dr3 = cmd5.ExecuteReader();
                string shortlisted1 = "";
                while (dr3.Read())
                {
                    shortlisted1 = dr3["shortlisted"].ToString();
                }
                con.Close();
                if (shortlisted1.Contains(type[0] + id))
                {
                    Button2.Text = "Shortlisted";
                }
                else
                {
                    Button2.Text = "Shortlist";
                }
            }
        }

        protected void ChangeImagePrev(object sender, ImageClickEventArgs e)
        {
            current -= 1;
            if (current == 0)
            {
                ImageButton3.Visible = false;
            }
            ImageButton2.Visible = true;
            Panel8.BackImageUrl = list[current];
        }

        protected void ChangeImageNext(object sender, ImageClickEventArgs e)
        {
            current += 1;
            if (current == list.Count - 1)
            {
                ImageButton2.Visible = false;
            }
            ImageButton3.Visible = true;
            Panel8.BackImageUrl = list[current];
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string type = Request.QueryString["type"];
            string id = Request.QueryString["id"];
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
                SqlCommand cmd2 = new SqlCommand("select * from [user] where id=@userid;", con);
                cmd2.Parameters.AddWithValue("@userid", Session["userid"]);
                con.Open();
                SqlDataReader dr2 = cmd2.ExecuteReader();
                string shortlisted = "";
                while (dr2.Read())
                {
                    shortlisted = dr2["shortlisted"].ToString();
                }
                con.Close();
                if (Button2.Text == "Shortlist")
                {
                    shortlisted += type[0] + id + " ";
                    Button2.Text = "Shortlisted";
                }
                else
                {
                    shortlisted = shortlisted.Replace(type[0] + id + " ", "");
                    Button2.Text = "Shortlist";
                }
                SqlCommand cmd3 = new SqlCommand("update [user] set shortlisted = @sl where id = @uid;", con);
                cmd3.Parameters.AddWithValue("@sl", shortlisted);
                cmd3.Parameters.AddWithValue("@uid", Session["userid"].ToString());
                con.Open();
                cmd3.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string type = Request.QueryString["type"];
            string id = Request.QueryString["id"];
            Response.Redirect("Contact.aspx?type="+type+"&id="+id);
        }
    }
}