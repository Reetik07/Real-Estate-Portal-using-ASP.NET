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
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterData();
        }
        public void RepeaterData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from propertyforsale";
            con.Open();
            //var dataReader = cmd.ExecuteReader();
            //var dataTable = new DataTable();
            //dataTable.Load(dataReader);
            //dataTable.Columns.Add("image", typeof(String));
            //Repeater1.DataSource = dataTable;
            Repeater1.DataSource = cmd.ExecuteReader();
            Repeater1.DataBind();
            con.Close();
        }
        public void Product()
        {
            Response.Redirect("Product.aspx");
        }
    }
}