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
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Uname"] != null && Request.Cookies["password"] != null)
                {
                    txt_uname.Text = Request.Cookies["Uname"].Value;
                    txt_pass.Attributes["value"] = Request.Cookies["password"].Value;
                    ckbox_remember.Checked = true;
                }
            }
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (ckbox_remember.Checked)
            {
                Response.Cookies["Uname"].Value = txt_uname.Text;
                Response.Cookies["password"].Value = txt_pass.Text;

                Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(15);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
            }

            if (txt_uname.Text != string.Empty && txt_pass.Text != string.Empty)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "select * from whole_saler where [W_saler_Name]='" + txt_uname.Text + "'";
                SqlDataReader sdr;
                sdr = scmd.ExecuteReader();

                if (sdr.Read())
                {

                    string pass = sdr["password"].ToString();
                    if (pass == txt_pass.Text)
                    {
                        Session["WSALER"]= sdr[0].ToString();
                        Session.Timeout = 20;
                        Response.Redirect("~/UserProfile.aspx?id="+ Session["WSALER"] + "");
                    }
                }

                conn.Close();
            }
            else
            {
                lbl_alert.Text = "Invalid User Name and Password";
                txt_uname.Focus();
            }
        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserRegister.aspx");
        }
    }
}