using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiCasa_Final_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ID"] = null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Session["ID"] = DataLink.UserData.Login(txtEmail.Text, txtPassword.Text);

            if ((int)Session["ID"] == 0)
            {
                Session["ID"] = null;
                Response.Redirect("Login.aspx");
            }

            else if ((int)Session["ID"] != 0)
                Response.Redirect("Index.aspx");
            

            //DataTable UserData = DataLink.UserData.GetUsersForLogin();
            //foreach (DataRow r in UserData.Rows)
            //{
            //    if (r[1].ToString() == txtEmail.Text)
            //    {
            //        if (r[2].ToString() == txtPassword.Text)
            //        {
                       
            //            Session["ID"] = r[0];
            //            Session["EMAIL"] = r[1];
            //            Session["PASSWORD"] = r[2];
            //            Session["NAME"] = r[3];
            //            Session["LOCATION"] = r[4];
            //            Session["PHONE"] = r[5];
            //            Response.Redirect("UserProfile.aspx");
            //        }
            //    }
            //}
            
                
            
            
        }
    }
}