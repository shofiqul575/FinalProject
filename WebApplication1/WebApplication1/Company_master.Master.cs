using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Company_master : System.Web.UI.MasterPage
    {
        string SessionName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["company"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                //lbtn_signup_profile.Text = " Company Profile";
                lbtn_product.Text = "Products";
                lbtn_register.Visible = false;
                //lbtnAcHistory.Text = "Account";
                //lbtnAcHistory.Visible = true;
            }
            else
            {
                lbtn_login_logout.Text = "Login";
                //lbtn_signup_profile.Visible = false;
                lbtn_product.Visible = false;
                //lbtnAcHistory.Visible = false;
            }
        }

        protected void lbtn_login_logout_Click(object sender, EventArgs e)
        {
            if (lbtn_login_logout.Text == "Login")
            {
                Response.Redirect("CompanyLogin.aspx");
            }
            if (lbtn_login_logout.Text == "Logout")
            {
                Session.Abandon();
                Response.Redirect("CompanyLogin.aspx");
            }
            if (lbtn_register.Text == "Register")
            {
                Response.Redirect("CompanyRegister.aspx");
            }
        }

        protected void lbtn_register_Click(object sender, EventArgs e)
        {
            if (lbtn_register.Text == "Register")
            {
                Response.Redirect("CompanyRegister.aspx");
            }
        }

        protected void lbtn_product_Click(object sender, EventArgs e)
        {
            if (Session["company"] != null)
            {
                SessionName = Session["company"].ToString();
                Response.Redirect("AddProducts.aspx?id=" + SessionName + "");
            }
            
        }

        //protected void lbtnAcHistory_Click(object sender, EventArgs e)
        //{
        //    if (Session["company"] != null)
        //    {
        //        SessionName = Session["company"].ToString();
        //        Response.Redirect("CompanyAcHistory.aspx?id=" + SessionName + "");
        //    }
        //}
    }
}