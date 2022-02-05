using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 { 


public partial class ProductView : System.Web.UI.Page
    {
        string SessionName;
        SqlConnection cn;
        SqlCommand cmd;
        DataSet ds;
        SqlDataAdapter da = null;
        protected void Page_Load(object sender, EventArgs e)
        {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ConnectionString);
        if (Request.QueryString["pdid"] != null)
        {
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }
     }
    void BindData()
    {
        Int64 PID = Convert.ToInt64(Request.QueryString["pdid"]);
        if (cn.State != ConnectionState.Open) cn.Open();
        da = new SqlDataAdapter("Select * from product where pdid=" + PID + "", cn);
        //da = new SqlDataAdapter("select * from product", cn);
        ds = new DataSet();
        da.Fill(ds);
        rptimage.DataSource = ds;
        rptimage.DataBind();
    }

    protected string GetActiveClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
        
        protected void btnAddToCart_Click1(object sender, EventArgs e)
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["pdid"]);

            if (PID != 0)
            {
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PID;

                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = CookiePID;
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                else
                {
                    HttpCookie CartProducts = new HttpCookie("CartPID");
                    CartProducts.Values["CartPID"] = PID.ToString();
                    CartProducts.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(CartProducts);
                }
                Response.Redirect("~/UserProductList.aspx?pdid=" + PID);
            }
        }
    }
}