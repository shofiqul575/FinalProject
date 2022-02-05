using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEmail.Text != "" && txt_subject.Text != "" && txtComments.Text != "")
            {
                MailAddress to = new MailAddress("shofiquli321@gmail.con");
                MailAddress from = new MailAddress(txtEmail.Text);
                MailMessage message = new MailMessage(from, to);

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["G_infoConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "insert into Feedback( Name,E_mail, Subject, Comments,Feedback_date) values('" + txtName.Text + "',  '" + txtEmail.Text + "', '" + txt_subject.Text + "', '" + txtComments.Text + "','" + DateTime.Now.ToString() + "')";
                scmd.ExecuteNonQuery();
                conn.Close();
                lbl_thank.Text = "Thanks For Your Feedback keep connect with us";
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txt_subject.Text = string.Empty;
                txtComments.Text = string.Empty;
            }
            else
            {
                lbl_thank.Text = "Please Enter following information";
                lbl_thank.ForeColor = System.Drawing.Color.Red;
                txtName.Focus();
            }
        }
    }
}