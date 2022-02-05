using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class User : System.Web.UI.MasterPage
    {
        string SessionName;
        protected void Page_Load(object sender, EventArgs e)
        {          
            if (Session["WSALER"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                //lbtn_signup_profile.Text = " Company Profile";
                //lbtn_product.Text = "Products";
                //lbtn_register.Visible = false;               
            }
            else
            {
                lbtn_login_logout.Text = "Login";
                //lbtn_signup_profile.Visible = false;
                lbtn_product.Visible = true;                
            }
            //BindCartNumber();
        }
        //public void BindCartNumber()
        //{
        //    if (Request.Cookies["CartPID"] != null)
        //    {              
        //        string[] ProductArray = CookiePID.Split(',');
        //        int ProductCount = ProductArray.Length;
        //        pCount.InnerText = ProductCount.ToString();
        //    }
        //    else
        //    {
        //        pCount.InnerText = 0.ToString();
        //    }
        //}

        protected void lbtn_login_logout_Click(object sender, EventArgs e)
        {
            if (lbtn_login_logout.Text == "Logout")
            {
                Session.Abandon();
                Response.Redirect("UserLogin.aspx");
            }
            if (lbtn_login_logout.Text == "Login")
            {                
                Response.Redirect("UserLogin.aspx");
            }
        }

        protected void lbtn_product_Click(object sender, EventArgs e)
        {
            if (Session["WSALER"] != null)
            {
                SessionName = Session["WSALER"].ToString();
                Response.Redirect("UserProductList.aspx?id=" + SessionName + "");
            }
            else
            {
                Response.Redirect("UserProductList.aspx");
            }
        }       
    }
}