using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_submit_Click1(object sender, EventArgs e)
        {
            if (txt_C_pass.Text == txt_pass.Text)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "insert into whole_saler([W_saler_Name],[Password],[Shop_Name],[Shop_info],[Address],[Con_number],[E_mail],[district],[sub_district],[Reg_Date]) values('" + txt_com_name.Text + "', '" + txt_pass.Text + "', '" + txt_shop_name.Text + "', '" + txt_shop_info.Text + "', '" + txt_address.Text + "', '" + txt_Con_Number.Text + "', '" + txt_email.Text + "', '" + txt_dis.Text + "', '" + txt_sub_dis.Text + "','" + DateTime.Now.ToString() + "')";
                scmd.ExecuteNonQuery();
                conn.Close();
                
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                Label12.ForeColor = Color.Red;
                Label12.Text = "Passwords do not match";
            }
        }
    }
}