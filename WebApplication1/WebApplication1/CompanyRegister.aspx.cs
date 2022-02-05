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
    public partial class CompanyRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSignup_Click(object sender, EventArgs e)
        {
            if (tb_com_name.Text != "" && tb_com_info.Text != "" && tb_address.Text != "" && tb_contact.Text != "" && tb_Email.Text != "")
            {

                if (tb_CPass.Text == tb_Pass.Text)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                    conn.Open();

                    SqlCommand scmd = new SqlCommand();
                    scmd.Connection = conn;
                    scmd.CommandText = "insert into Company(company_name, Password,company_info, Address, Con_Number, E_mail,Com_Reg_Date) values('" + tb_com_name.Text + "', '" + tb_Pass.Text + "','" + tb_com_info.Text + "', '" + tb_address.Text + "', '" + tb_contact.Text + "', '" + tb_Email.Text + "','" + DateTime.Now.ToString() + "')";
                    scmd.ExecuteNonQuery();
                    conn.Close();

                    Response.Redirect("~/CompanyLogin.aspx");
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Passwords do not match";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Please Enter Your Correct Infoemation";
                tb_com_name.Focus();
               
            }
        }
    }
}