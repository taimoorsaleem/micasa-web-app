using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiCasa_Final_Project
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {



            if (!(DataLink.UserData.CheckEmailExist(txtEmail.Text)))
            {
                DataLink.Member NewMember = new DataLink.Member(txtName.Text, txtEmail.Text, txtPassword.Text);
                DataLink.UserData.RegisterMember(NewMember);
                //DL.User.RegisterUser(txtName.Text, txtEmail.Text, txtPassword.Text);
                Response.Redirect("Login.aspx");
            }
        }


    }
}