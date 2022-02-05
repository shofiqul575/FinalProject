using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            CalculateTotalAmount();
            images();
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            images();
        }
        private void images()
        {
            Random rand = new Random();
            int i = rand.Next(7,7 );
            Img_galary.ImageUrl = "~/Image/" + i.ToString() + ".jpg";
        }

        private void CalculateTotalAmount()
        {
            if (Session["WSALER"] != null)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);

                con.Open();

                SqlCommand cmd = new SqlCommand("select sum(Total_Amount) from Cart where CartID='" + Session.SessionID + "'", con);

                lblTotalAmount.Text = cmd.ExecuteScalar().ToString();

                cmd.Dispose();

                con.Close();
            }
            else
            {
                lblTotalAmount.Text = "0";
            }
            
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            CalculateTotalAmount();
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            CalculateTotalAmount();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if (Session["WSALER"] != null)          
            {
                string cusid = Session["WSALER"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);

                con.Open();


                string query = "insert into Orders2 (CustomerID, OrderDateTime, TotalAmount) values ("+cusid+", GETDATE() , " + int.Parse(lblTotalAmount.Text) + "); SELECT SCOPE_IDENTITY();";

                SqlCommand cmd = new SqlCommand(query, con);

                int OrderID = Convert.ToInt32(cmd.ExecuteScalar());

                query = "insert into OrderDetails (OrderID, ProductID, Quantity, Total_Amount) select " + OrderID + " AS OrderID, ProductID, Quantity, Total_Amount from Cart where CartID='" + Session.SessionID + "'";

                cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();

                query = "delete from Cart where CartID='" + Session.SessionID + "'";

                cmd = new SqlCommand(query, con);

                cmd.ExecuteNonQuery();

                cmd.Dispose();
                con.Close();
                
            }
            
        }
    }
}