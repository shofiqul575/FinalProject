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
    public partial class ProductLists : System.Web.UI.Page
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
                if (Session["company"] != null)
                {
                    SessionName = Convert.ToString(Session["company"]);
                }
                BindData( SessionName);
            }
        }
        void BindData( string sName)
        {
            
            if (cn.State != ConnectionState.Open) cn.Open();
            da = new SqlDataAdapter("Select * from product where productby='"+sName+"'", cn);
            //da = new SqlDataAdapter("select * from product", cn);
            ds = new DataSet();
            da.Fill(ds);
            rptimage.DataSource = ds;
            rptimage.DataBind();            
         }
       }
    }