﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin_wsaler_details_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["wsid"] != null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = " delete from whole_saler where wsid=" + Request.QueryString["wsid"].ToString() + "";
                scmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("~/AdminWsalerAccount.aspx");
            }
        }
    }
}