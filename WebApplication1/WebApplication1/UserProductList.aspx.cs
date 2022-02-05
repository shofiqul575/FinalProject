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
    public partial class UserProductList : System.Web.UI.Page
    {
        string SessionName;
        SqlConnection cn;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);
            if (!Page.IsPostBack)
            {
                if (Session["WSALER"] != null)
                {
                    SessionName = Session["WSALER"].ToString();
                }
                BindData();
            }
        }
        void BindData()
        {
            //string user_name = Convert.ToString(Request.QueryString["id"]);
            //if (user_name == SessionName)
            //{
                if (cn.State != ConnectionState.Open) cn.Open();
                //da = new SqlDataAdapter("Select product_name,size,available_color,price,category,product_image,productby,company_name from product,company where productby='" + com_name + "'", cn);
                da = new SqlDataAdapter("select * from product", cn);
                ds = new DataSet();
                da.Fill(ds);
                rptimage.DataSource = ds;
                rptimage.DataBind();
            //}
            //else
            //{
            //    Label1.Text = "There was an error";
            //    Label1.ForeColor = System.Drawing.Color.Red;
            //}
        }
    }
}