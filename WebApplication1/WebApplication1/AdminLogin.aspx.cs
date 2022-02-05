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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (txt_A_uname.Text != string.Empty && txt_A_password.Text != string.Empty)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "select password from admin where A_U_name='" + txt_A_uname.Text + "'";
                SqlDataReader sdr;
                sdr = scmd.ExecuteReader();

                if (sdr.Read())
                {

                    string pass = sdr["Password"].ToString();
                    if (pass == txt_A_password.Text)
                    {
                        Session["admin"]= txt_A_uname.Text;
                        Session.Timeout = 20;
                        Response.Redirect("~/admin_access.aspx");
                    }
                }
                conn.Close();
            }
            else
            {
                lbl_err_msg.Text = "Invalid user Name and Password";
                lbl_err_msg.ForeColor = System.Drawing.Color.Red;
                txt_A_uname.Focus();

            }
        }
    }
}