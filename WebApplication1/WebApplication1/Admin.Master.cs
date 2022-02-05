using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                lbtn_manage_account.Text = "Manage Account";
                //lbtn_manage_product.Text = "Manage Product";
                lbtn_feedback.Text = "Feedback";
            }
            else
            {
                lbtn_feedback.Visible = false;
                lbtn_manage_account.Visible = false;
                //lbtn_manage_product.Visible = false;
            }
        }

        protected void lbtn_login_logout_Click(object sender, EventArgs e)
        {
            if (lbtn_login_logout.Text == "Login")
            {
                Response.Redirect("AdminLogin.aspx");
            }
            if (lbtn_login_logout.Text == "Logout")
            {
                Session.Abandon();
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void lbtn_manage_account_Click(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Response.Redirect("ManageAccount.aspx");
            }
        }

        protected void lbtn_manage_product_Click(object sender, EventArgs e)
        {

        }

        protected void lbtn_feedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }
    }
}