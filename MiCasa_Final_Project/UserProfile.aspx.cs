using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;

namespace MiCasa_Final_Project
{
    public partial class UserProfile : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.AddHeader("Pragma", "no-cache");
            //Response.AddHeader("cache-control", "no-store");

            if (Session["ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                DataTable dt = DataLink.UserData.GetUserData((int)Session["ID"]);
                
                lblEmail.Text = dt.Rows[0][2].ToString();
                lblLocation.Text = dt.Rows[0][4].ToString();
                lblNumber.Text = dt.Rows[0][3].ToString();
                lblName.Text = dt.Rows[0][1].ToString();
                //imgUserData.ImageUrl = dt.Rows[0][6].ToString();

                txtName.Attributes["placeholder"] = dt.Rows[0][1].ToString();
                txtEmail.Attributes["placeholder"] = dt.Rows[0][2].ToString();
                txtPhone.Attributes["placeholder"] = dt.Rows[0][3].ToString();
                //txtLocation.Attributes["placeholder"] = dt.Rows[0][4].ToString();

                ListItem select = new ListItem(dt.Rows[0][4].ToString(), "");
                select.Attributes["selected"]="true";
                select.Attributes["disabled"] = "true";
                select.Attributes["hidden"] = "true";
                ddCity.Items.Insert(0, select);

                string LocalHostPath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//userimages//";
                string ImagePath = DataLink.UserData.GetUserImage(LocalHostPath, (int)Session["ID"]);

                

                //bool exists = File.Exists(ImagePath);

                //System.Drawing.Image TestImage = System.Drawing.Image.FromFile(ImagePath);
                //if (DataLink.UserData.GetUserImage((int)Session["ID"]) != null)
                //{
                //string folder_path = Server.MapPath("~//userimages//");
                //string folder_path = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + Server.MapPath("~\\userimages\\");
                
                //myupload.SaveAs(folder_path + "usrimg.jpg");
                //imgUserData.Attributes["src"] = @"../../images/usrimg.jpg";
                //imgUserData.ImageUrl = "~//dist//img//taimoor.jpg";
                //imgUserData.Attributes["src"] = folder_path + "usrimg.jpg";
                //if(File.Exists(ImagePath))
                //if(TestImage != null)
                //if(!IsPostBack)

                if (DataLink.UserData.UserImageExists((int)Session["ID"]))
                    imgUser.Attributes["src"] = ImagePath;

                //else if(IsPostBack)
                //    imgUserData.Attributes["src"] = DataLink.UserData.GetUserLocalImage((int)Session["ID"]);

                //imgUserData.Attributes["src"] = DataLink.UserData.GetUserImage((int)Session["ID"]);
                //imgUserData.ImageUrl = DataLink.UserData.GetUserImage((int)Session["ID"]);
                // imgUserData.Source = new BitmapImage(new Uri(user_image, UriKind.RelativeOrAbsolute));
                //}

                if (!IsPostBack)
                {
                    if (Session["ID"] != null)
                    {
                        lblUserName.InnerText = "Logged in as " + DataLink.UserData.GetUserNameByID((int)Session["ID"]);
                        userpanel.Attributes.Add("style", "display:block; height:50px");
                        logoutbtn.Attributes.Add("style", "display:block; height:50px");
                        ImageButton1.Attributes.Add("src", @"/dist/img/button.png");
                        loginlink.Attributes.Add("style", "display:none");
                        registerlink.Attributes.Add("style", "display:none");
                        adlink.Attributes.Add("style", "display:block");
                        profilelink.Attributes.Add("style", "display:block");
                    }

                    loadCity();
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            //if (Program.con.State.Equals(ConnectionState.Closed))
            //{
            //    Program.con.Open();

            //}


            //SqlCommand cmd = new SqlCommand("update [User] set uname='" + txtname.Text + "',uemail='" + email_txt.Text + "',uphone='" + txtname.Text + "',ulocation='" + txtlocation.Text + "' where uid=1", Program.con);
            //cmd.ExecuteNonQuery();
            //Program.con.Close();
            DataLink.User u = DataLink.UserData.GetUserDetailsByID((int)Session["ID"]);

            string Name, Email, Location="", Phone;

            if (txtName.Text == "")
                Name = u.Name;
            else
                Name = txtName.Text;

            if (txtEmail.Text == "")
                Email = u.Email;
            else
                Email = txtEmail.Text;

            if (ddCity.SelectedIndex == 1 && ddArea.SelectedIndex == 0)
                Location = u.Location;
            else
                //Location= ddCity.Text + "," + ddArea.SelectedIndex.;
                    //txtLocation.Text;
                Location = ddArea.SelectedItem.Text + ", " + ddCity.SelectedItem.Text;

            if (txtPhone.Text == "")
                Phone = u.Phone;
            else
                Phone = txtPhone.Text;

            DataLink.UserData.UpdateUserData(Name, Email, Location, Phone, (int)Session["ID"]);

            if (myupload.HasFile)
            {

                string folder_path = Server.MapPath("//images//");
                myupload.SaveAs(folder_path + "TempImage.jpg");

                System.Drawing.Image UploadImage = System.Drawing.Image.FromFile(folder_path + "TempImage.jpg");
                DataLink.UserData.SaveUserImage(UploadImage, (int)Session["ID"]);
                UploadImage.Dispose();
                File.Delete(folder_path + "TempImage.jpg");
            }

            Response.Redirect("UserProfile.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            

            //string Img_name = myupload.FileName;
            

            //string folder_path = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + @"userimages/";
            //myupload.SaveAs(@"userimages/usrimg.jpg");

            //lblName.Text = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;
            //lblName.Text = Server.MapPath("~");


            


          //System.Drawing.Image img = System.Drawing.Image.FromFile(folder_path + @"/usrimg.jpg");

         // System.Drawing.Image newimg = ImageManipulation.ScaleImage(img);
         // img.Dispose();

            //imgUserData.Attributes["src"] = "";
            //StreamWriter mystream = new StreamWriter(folder_path + @"/usrimg.jpg");
          //newimg.Save(folder_path + @"/usrimg.jpg");
          // imgUserData.Attributes["src"] = folder_path + @"/usrimg.jpg";
            //ImageManipulation.ScaleImage(img).Save(folder_path + @"/usrimg.jpg");

        }

           

        protected void ddCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            loadAreas(ddCity.SelectedValue);
        }



        private void loadCity()
        {
            ddCity.DataSource = DataLink.PropertyData.GetCities();
            ddCity.DataTextField = "cname";
            ddCity.DataValueField = "cid";
            ddCity.DataBind();

            ListItem select = new ListItem("Please Select a City", "");
            select.Attributes["disabled"] = "true";
            select.Attributes["selected"] = "true";
            select.Attributes["hidden"] = "true";
            
            ddCity.Items.Insert(0, select);

        }

        private void loadAreas(string city)
        {

            ddArea.DataSource = DataLink.PropertyData.GetAreas(int.Parse(city));
            ddArea.DataTextField = "aname";
            ddArea.DataValueField = "aid";
            ddArea.DataBind();

            ListItem select = new ListItem("Please Select an Area", "");
            select.Attributes["disabled"] = "true";
            select.Attributes["selected"] = "true";
            select.Attributes["hidden"] = "true";
            
            ddArea.Items.Insert(0, select);

        }

        protected void ddArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void LogOut_Clicked(object sender, EventArgs e)
        {
            Session["ID"] = null;
            loginlink.Attributes.Add("style", "display:block");
            registerlink.Attributes.Add("style", "display:block");
            profilelink.Attributes.Add("style", "display:none");
            adlink.Attributes.Add("style", "display:none");
            Response.Redirect("login.aspx");
        }
    }
}
