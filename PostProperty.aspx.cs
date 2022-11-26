using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace Project1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel14.Visible = true;
            Panel25.Visible = false;
            Panel66.Visible = false;
            if (DropDownList2.SelectedItem.ToString() == "Rent / Lease")
            {
                TextBox11.Attributes["placeholder"] = "Enter a rental value";
                RequiredFieldValidator19.ErrorMessage = "Please enter a rental value";
                TextBox12.Attributes["placeholder"] = "Enter a security deposit amount";
                RequiredFieldValidator19.ErrorMessage = "Please enter a security deposit amount";
                Panel95.Visible = true;
            }
            else
            {
                TextBox11.Attributes["placeholder"] = "Enter a price";
                RequiredFieldValidator19.ErrorMessage = "Please enter a price";
                TextBox12.Attributes["placeholder"] = "Enter a token amount";
                RequiredFieldValidator19.ErrorMessage = "Please enter a token amount";
                Panel95.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel5.Visible = true;
            Panel14.Visible = false;
            Panel25.Visible = false;
            Panel66.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel14.Visible = false;
            Panel25.Visible = false;
            Panel66.Visible = true;
            int count = 0;
            if (TextBox3.Text == "0")
            {
                Panel28.Visible = false;
                count += 1;
            }
            else
            {
                Panel28.Visible = true;
            }
            if (TextBox4.Text == "0")
            {
                Panel40.Visible = false;
                count += 1;
            }
            else
            {
                Panel40.Visible = true;
            }
            if (TextBox6.Text == "0")
            {
                Panel29.Visible = false;
                count += 1;
            }
            else
            {
                Panel29.Visible = true;
            }
            if (TextBox7.Text == "0")
            {
                Panel38.Visible = false;
                count += 1;
            }
            else
            {
                Panel38.Visible = true;
            }
            if (count % 2 == 0)
            {
                Panel50.Visible = false;
            }
            else
            {
                Panel50.Visible = true;
            }
            if (count == 0 || count == 1)
            {
                Panel25.Style.Add("padding-bottom", "120px");
            }
            else if (count == 2 || count == 3)
            {
                Panel25.Style.Add("padding-bottom", "50px");
            }
            else if (count == 4 || count == 5)
            {
                Panel25.Style.Add("padding-bottom", "0px");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel14.Visible = false;
            Panel25.Visible = false;
            Panel66.Visible = true;
            Panel2.Style.Remove("padding-bottom");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel14.Visible = false;
            Panel25.Visible = true;
            Panel66.Visible = false;
            Panel2.Style.Add("padding-bottom", "70px");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
            Panel14.Visible = true;
            Panel25.Visible = false;
            Panel66.Visible = false;
        }

        protected void Tenants_Preferred(object sender, EventArgs e)
        {
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.ToString() == "Rent / Lease")
            {
                string date = DateTime.UtcNow.ToString("d");
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into propertyforrent(userid, date, property_type, transaction_type, property_status, city, locality, bedrooms, bathrooms, balconies, store_rooms, built_up_area, carpet_area, parking_slots, parking_type, age, furnished_status, floor, total_floor, address, rental_value, security_deposit, tenants_preferred, description) values(@uid,@date,@pt,@tt,@ps,@c,@l,@bed,@bath,@bal, @sr, @bua, @ca, @pslots, @ptype, @ag, @fs, @fl, @tfl, @add, @rv, @sd, @tp, @des)", con);
                cmd.Parameters.AddWithValue("@uid", Session["userid"]);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@pt", DropDownList1.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@tt", DropDownList6.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@ps", DropDownList7.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@c", TextBox1.Text);
                cmd.Parameters.AddWithValue("@l", TextBox2.Text);
                cmd.Parameters.AddWithValue("@bed", TextBox3.Text);
                cmd.Parameters.AddWithValue("@bath", TextBox4.Text);
                cmd.Parameters.AddWithValue("@bal", TextBox6.Text);
                cmd.Parameters.AddWithValue("@sr", TextBox7.Text);
                cmd.Parameters.AddWithValue("@bua", TextBox5.Text);
                cmd.Parameters.AddWithValue("@ca", TextBox8.Text);
                cmd.Parameters.AddWithValue("@pslots", TextBox15.Text);
                cmd.Parameters.AddWithValue("@ptype", DropDownList3.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@ag", TextBox16.Text);
                cmd.Parameters.AddWithValue("@fs", DropDownList5.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@fl", TextBox9.Text);
                cmd.Parameters.AddWithValue("@tfl", TextBox10.Text);
                cmd.Parameters.AddWithValue("@add", TextBox14.Text);
                cmd.Parameters.AddWithValue("@rv", TextBox11.Text);
                cmd.Parameters.AddWithValue("@sd", TextBox12.Text);
                cmd.Parameters.AddWithValue("@tp", DropDownList4.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@des", TextBox13.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your property has been successfully uploaded!');window.location = 'Home.aspx';</script>");
                SqlCommand cmd1 = new SqlCommand("select * from propertyforrent;", con);
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                String id = "";
                while (dr.Read())
                {
                    id = dr["pfrid"].ToString();
                }
                con.Close();
                String newid = "";
                if (id == "")
                {
                    newid = "1";
                }
                else
                {
                    newid = int.Parse(id).ToString();
                }
                if (Panel36.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/Hall/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload5.PostedFiles)
                    {
                        file.SaveAs(folderPath + "HallImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel28.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/Bedroom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload1.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BedroomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel47.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/Kitchen/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload6.PostedFiles)
                    {
                        file.SaveAs(folderPath + "KitchenImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel40.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/Bathroom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload2.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BathroomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel29.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/Balcony/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload3.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BalconyImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel38.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Rent/Images/" + newid + "/StoreRoom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload4.PostedFiles)
                    {
                        file.SaveAs(folderPath + "StoreRoomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
            }
            else
            {
                string date = DateTime.UtcNow.ToString("d");
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into propertyforsale(userid, date, property_type, transaction_type, property_status, city, locality, bedrooms, bathrooms, balconies, store_rooms, built_up_area, carpet_area, parking_slots, parking_type, age, furnished_status, floor, total_floor, address, price, token, description) values(@uid,@date,@pt,@tt,@ps,@c,@l,@bed,@bath,@bal, @sr, @bua, @ca, @pslots, @ptype, @ag, @fs, @fl, @tfl, @add, @pr, @tk, @des)", con);
                cmd.Parameters.AddWithValue("@uid", Session["userid"]);
                cmd.Parameters.AddWithValue("@date", date);
                cmd.Parameters.AddWithValue("@pt", DropDownList1.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@tt", DropDownList6.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@ps", DropDownList7.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@c", TextBox1.Text);
                cmd.Parameters.AddWithValue("@l", TextBox2.Text);
                cmd.Parameters.AddWithValue("@bed", TextBox3.Text);
                cmd.Parameters.AddWithValue("@bath", TextBox4.Text);
                cmd.Parameters.AddWithValue("@bal", TextBox6.Text);
                cmd.Parameters.AddWithValue("@sr", TextBox7.Text);
                cmd.Parameters.AddWithValue("@bua", TextBox5.Text);
                cmd.Parameters.AddWithValue("@ca", TextBox8.Text);
                cmd.Parameters.AddWithValue("@pslots", TextBox15.Text);
                cmd.Parameters.AddWithValue("@ptype", DropDownList3.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@ag", TextBox16.Text);
                cmd.Parameters.AddWithValue("@fs", DropDownList5.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@fl", TextBox9.Text);
                cmd.Parameters.AddWithValue("@tfl", TextBox10.Text);
                cmd.Parameters.AddWithValue("@add", TextBox14.Text);
                cmd.Parameters.AddWithValue("@pr", TextBox11.Text);
                cmd.Parameters.AddWithValue("@tk", TextBox12.Text);
                cmd.Parameters.AddWithValue("@des", TextBox13.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Your property has been successfully uploaded!');window.location = 'Home.aspx';</script>");
                SqlCommand cmd1 = new SqlCommand("select * from propertyforsale;", con);
                con.Open();
                SqlDataReader dr = cmd1.ExecuteReader();
                String id = "";
                while (dr.Read())
                {
                    id = dr["pfsid"].ToString();
                }
                con.Close();
                String newid = "";
                if (id == "")
                {
                    newid = "1";
                }
                else
                {
                    newid = int.Parse(id).ToString();
                }
                if (Panel36.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/Hall/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload5.PostedFiles)
                    {
                        file.SaveAs(folderPath + "HallImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel28.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/Bedroom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload1.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BedroomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel47.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/Kitchen/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload6.PostedFiles)
                    {
                        file.SaveAs(folderPath + "KitchenImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel40.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/Bathroom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload2.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BathroomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel29.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/Balcony/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload3.PostedFiles)
                    {
                        file.SaveAs(folderPath + "BalconyImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
                if (Panel38.Visible == true)
                {
                    int c = 1;
                    string folderPath = Server.MapPath("~/Images/" + newid + "/StoreRoom/");
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }
                    foreach (var file in FileUpload4.PostedFiles)
                    {
                        file.SaveAs(folderPath + "StoreRoomImage" + c.ToString() + ".jpg");
                        c += 1;
                    }
                }
            }
        }
    }
}