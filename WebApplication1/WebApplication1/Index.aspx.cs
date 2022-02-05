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
    public partial class Index : System.Web.UI.Page
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
                images();
            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            images();
        }
        private void images()
        {
            Random rand = new Random();
            int i = rand.Next(1, 6);
            Img_galary.ImageUrl = "~/Image/" + i.ToString() + ".jpg";
        }
        void BindData()
        {
            
            if (cn.State != ConnectionState.Open) cn.Open();          
            da = new SqlDataAdapter("select * from product", cn);
            ds = new DataSet();
            da.Fill(ds);
            rptimage.DataSource = ds;
            rptimage.DataBind();
            
        }
    }
}