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
    public partial class ProductDetails : System.Web.UI.Page
    {
        string SessionName;
        SqlConnection cn;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);
            BindData();
            if (Session["WSALER"] != null)
            {
                int pid = int.Parse(Request.QueryString["pdid"]);

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);

                con.Open();

                SqlCommand cmd = new SqlCommand("select * from product where pdid=" + pid, con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    lblProductID.Text = pid.ToString();
                    lblProductName.Text = dr[1].ToString();
                    lblSie.Text = dr[3].ToString();
                    lblColors.Text = dr[4].ToString();
                    lblProductPrice.Text = dr[5].ToString();
                    lblCategory.Text = dr[6].ToString();
                    lblCompany.Text = dr[7].ToString();
                    //pdimg.ImageUrl = dr[6].ToString();
                    lblAmount.Text = CalculateAmount(txtQuantity.Text, dr[5].ToString());
                }

                dr.Close();

                cmd.Dispose();
            }
            else
            {
                int pid = int.Parse(Request.QueryString["pdid"]);

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);

                con.Open();

                SqlCommand cmd = new SqlCommand("select * from product where pdid=" + pid, con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    lblProductID.Text = pid.ToString();
                    lblProductName.Text = dr[1].ToString();
                    lblSie.Text = dr[3].ToString();
                    lblColors.Text = dr[4].ToString();
                    lblProductPrice.Text = dr[5].ToString();
                    lblCategory.Text = dr[6].ToString();
                    lblCompany.Text = dr[7].ToString();
                    //pdimg.ImageUrl = dr[6].ToString();
                    //lblAmount.Text = CalculateAmount(txtQuantity.Text, dr[4].ToString());
                }

                dr.Close();

                cmd.Dispose();

                btnAddToCart.Dispose();
                btnAddToCart.Visible = false;
                txtQuantity.Visible = false;
                lblAmount.Visible = false;
            }
                
        }
        void BindData()
        {
            int pid = int.Parse(Request.QueryString["pdid"]);
            
            if (cn.State != ConnectionState.Open) cn.Open();
            //da = new SqlDataAdapter("Select product_name,size,available_color,price,category,product_image,productby,company_name from product,company where productby='" + com_name + "'", cn);
            da = new SqlDataAdapter("select * from product where pdid="+pid, cn);
            ds = new DataSet();
            da.Fill(ds);
            rptimage.DataSource = ds;
            rptimage.DataBind();
            
        }

        private string CalculateAmount(string Quantity, string Price)
        {
            string q=Quantity, p=Price;

            int qty = int.Parse(q);

            int price = int.Parse(p);

            int amount = qty * price;

            return amount.ToString();
        }

        protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            lblAmount.Text = CalculateAmount(txtQuantity.Text, lblProductPrice.Text);
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);

            con.Open();

            string query = "insert into Cart (ProductID, Quantity, Price, Total_Amount, CartID) values (" + lblProductID.Text + ", " + txtQuantity.Text + ", " + lblProductPrice.Text + ", " + lblAmount.Text + ", '" + Session.SessionID + "')";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            Session["CartID"] = Session.SessionID;

            cmd.Dispose();

            con.Close();         
        }

        
    }
}