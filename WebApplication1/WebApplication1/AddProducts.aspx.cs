using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddProducts : System.Web.UI.Page
    {
        string SessionName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["company"] != null)
                {
                    SessionName = Session["company"].ToString();
                    txt_Company.Text = SessionName;
                }
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                FileUpload img = (FileUpload)imgUpload;
                Byte[] imgByte = null;
                if (img.HasFile && img.PostedFile != null)
                {
                    //To create a PostedFile
                    HttpPostedFile File = imgUpload.PostedFile;
                    //Create byte Array with file len
                    imgByte = new Byte[File.ContentLength];
                    //force the control to load data in array
                    File.InputStream.Read(imgByte, 0, File.ContentLength);
                }
                lbl_msg.Text = "Upload Succesful";
                lbl_msg.ForeColor = System.Drawing.Color.Green;
                // Insert the image into db
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());

                conn.Open();
                string sql = "INSERT INTO product(product_name,product_image, size,available_color, price, category, productby, post_date) VALUES(@product_name,@product_image,@size,@availavle_color,@price,@category,@productby,getdate())";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@product_name", txt_prd_name.Text.Trim());
                cmd.Parameters.AddWithValue("@product_image", imgByte);
                cmd.Parameters.AddWithValue("@size", txt_size.Text.Trim());
                cmd.Parameters.AddWithValue("@availavle_color", txt_color.Text.Trim());
                cmd.Parameters.AddWithValue("@price", txt_price.Text.Trim());
                cmd.Parameters.AddWithValue("@category", DropDownList1.Text.Trim());
                
                cmd.Parameters.AddWithValue("@productby", txt_Company.Text.Trim());
                int id = Convert.ToInt32(cmd.ExecuteScalar());

            }
            catch
            {

                lbl_msg.Text = "There was an error";
                lbl_msg.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void prd_list_Click(object sender, EventArgs e)
        {
            if (Session["company"] != null)
            {
                SessionName = Session["company"].ToString();
                Response.Redirect("ProductLists.aspx?id=" + SessionName + "");
            }
            
        }
    }
}