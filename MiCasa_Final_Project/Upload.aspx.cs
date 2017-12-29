using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLink;
using System.Web.UI.HtmlControls;
using AjaxControlToolkit;
using System.IO;


namespace MiCasa_Final_Project
{
    public partial class MyForm : System.Web.UI.Page
    {
        static List<string> ImageNames = new List<string>();
        static List<HttpPostedFile> Images = new List<HttpPostedFile>();
        //private string image1name;
        //private string image2name;
        //private string image3name;
        //private string image4name;
        //private string image5name;
        //public string image6name;
        //public string image7name;
        //public string image8name;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            //FileUpload2.Visible = false;
            //FileUpload3.Visible = false;
            //FileUpload4.Visible = false;
            //FileUpload5.Visible = false;
            //FileUpload6.Visible = false;
            //FileUpload7.Visible = false;
            //FileUpload8.Visible = false;
            if (Session["ID"] == null)
                Response.Redirect("Login.aspx");


            chkLeased.InputAttributes["class"] = "minimal";
            radiobtnSellFlat.InputAttributes["class"] = "minimal";
            radiobtnRentFlat.InputAttributes["class"] = "minimal";
            radiobtnSellHouse.InputAttributes["class"] = "minimal";
            radiobtnRentHouse.InputAttributes["class"] = "minimal";
            
            if (IsPostBack)
                return;

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

                Images.Clear();
                ImageNames.Clear();
                ViewState["image1"] = "";
                ViewState["image2"] = "";
                ViewState["image3"] = "";
                ViewState["image4"] = "";
                ViewState["image5"] = "";
                ViewState["image6"] = "";
                ViewState["image7"] = "";
                ViewState["image8"] = "";
                
                SetCities();
                LoadTypes();
            }

            ddCity_SelectedIndexChanged(sender, e);
        }

        protected void ddCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddCity.SelectedValue != "")
                SetAreas(int.Parse(ddCity.SelectedValue));

            ddArea_SelectedIndexChanged(sender, e);
        }

        protected void ddArea_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddArea.SelectedValue != "")
                SetBlocks(int.Parse(ddArea.SelectedValue));

            else
            {
                ddBlock.Items.Clear();
                ListItem select = new ListItem("Please Select a Block", "");
                select.Attributes["disabled"] = "true";
                select.Attributes["selected"] = "true";
                select.Attributes["hidden"] = "true";
                ddBlock.Items.Insert(0, select);
            }
            //ddBlock_SelectedIndexChanged(sender, e);
        }

        protected void ddPropertyType_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadPropertyTypeForm();
            ClearEntries();
        }

        protected void ddBlock_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ClearEntries()
        {
            txtAppartmentName.Text = "";
            txtareaDescriptionFlat.Text = "";
            txtareaDescriptionHouse.Text = "";
            txtBlock.Text = "";
            txtDescriptionPlot.Text = "";
            txtFlatFloor.Text = "";
            txtFlatFurnish.Text = "";
            txtFlatNumberOfRooms.Text = "";
            txtHouseFullNumberOfFloors.Text = "";
            txtHouseFullNumberOfRooms.Text = "";
            txtHouseFurnish.Text = "";
            txtHousePortionFloor.Text = "";
            txtHousePortionNumberOfRooms.Text = "";
            txtPriceFlat.Text = "";
            txtPriceHouse.Text = "";
            ddHousePosition.SelectedIndex = 0;
            ddHouseAreaType.SelectedIndex = 0;
            txtPricePlot.Text = "";
            txtPropertyTitle.Text = "";
        }





        protected void ddSize_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddPosition_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void SetCities()
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

        private void SetAreas(int CityID)
        {
            ddArea.DataSource = DataLink.PropertyData.GetAreas(CityID);
            ddArea.DataTextField = "aname";
            ddArea.DataValueField = "aid";
            ddArea.DataBind();

            ListItem select = new ListItem("Please Select an Area", "");
            select.Attributes["disabled"] = "true";
            select.Attributes["selected"] = "true";
            select.Attributes["hidden"] = "true";
            ddArea.Items.Insert(0, select);
        }

        private void SetBlocks(int AreaID)
        {
            if (PropertyData.BlocksAvailable(int.Parse(ddArea.SelectedValue)) > 1)
            {
                ddBlock.DataSource = DataLink.PropertyData.GetBlocks(AreaID);
                ddBlock.DataTextField = "bname";
                ddBlock.DataValueField = "bid";
                ddBlock.DataBind();

                ListItem select = new ListItem("Please Select a Block", "");
                select.Attributes["disabled"] = "true";
                select.Attributes["selected"] = "true";
                select.Attributes["hidden"] = "true";
                ddBlock.Items.Insert(0, select);

                ddBlock.Enabled = true;
            }

            else if (PropertyData.BlocksAvailable(int.Parse(ddArea.SelectedValue)) == 1)
            {
                ddBlock.Items.Clear();
                //ListItem select = new ListItem("Not Available", "");
                //select.Attributes["disabled"] = "true";
                //select.Attributes["selected"] = "true";
                //select.Attributes["hidden"] = "true";
                //ddBlock.Items.Add(select);

                ddBlock.DataSource = DataLink.PropertyData.GetBlocks(AreaID);
                ddBlock.DataTextField = "bname";
                ddBlock.DataValueField = "bid";
                ddBlock.DataBind();
                ddBlock.SelectedIndex = 0;
                ddBlock.Enabled = false;
                
            }
        }



        private void LoadTypes()
        {
            ddPropertyType.Items.Add(new ListItem("House", "1"));
            ddPropertyType.Items.Add(new ListItem("Appartment", "3"));
            ddPropertyType.Items.Add(new ListItem("Plot", "2"));
        }

        private void LoadPropertyTypeForm()
        {
            if (ddPropertyType.SelectedValue == "1")
            {
                divPlot.Attributes.Add("Style", "display:none");
                divAppartment.Attributes.Add("Style", "display:none");
                divHouse.Attributes.Add("Style", "display:Block");
                radiobtnSellHouse.Checked = true;
                                
            }

            else if (ddPropertyType.SelectedValue == "2")
            {
                divAppartment.Attributes.Add("Style", "display:none");
                divHouse.Attributes.Add("Style", "display:none");
                divPlot.Attributes.Add("Style", "display:Block");
                chkLeased.Checked = true;
                //vldplotpricereq.Enabled = true;
                //vldplotpriceregex.Enabled = true;
                //vldflataptnamereq.Enabled = false;
                //vldflatblockreq.Enabled = false;
                //vldflatfloorregex.Enabled = false;
                //vldflatfloorreq.Enabled = false;
                //vldflatfurnishreq.Enabled = false;
                //vldflatfurnishreq.Enabled = false;
                //vldflatpriceregex.Enabled = false;
                //vldflatpricereq.Enabled = false;
                //vldflatroomsregex.Enabled = false;
                //vldflatroomsreq.Enabled = false;
                //vldhouseareatype.Enabled = false;
                //vldhousefullfloorsregex.Enabled = false;
                //vldhousefullfloorsreq.Enabled = false;
                //vldhousefullroomsregex.Enabled = false;
                //vldhousefullroomsreq.Enabled = false;
                //vldhousefurnish.Enabled = false;
                //vldhouseportionregex.Enabled = false;
                //vldhouseportionreq.Enabled = false;
                //vldhouseportionroomsregex.Enabled = false;
                //vldhouseportionroomsreq.Enabled = false;
                //vldhouseposition.Enabled = false;
                //vldhousepriceregex.Enabled = false;
                //vldhousepricereq.Enabled = false;
                
                
                
                
            }

            else if (ddPropertyType.SelectedValue == "3")
            {
                divHouse.Attributes.Add("Style", "display:none");
                divPlot.Attributes.Add("Style", "display:none");
                divAppartment.Attributes.Add("Style", "display:Block");
                radiobtnSellFlat.Checked = true;
            }
        }

        protected void btnSubmitPlot_Click(object sender, EventArgs e)
        {
            Plot CurrentPlot = CreatePlotObject();
            PropertyData.UploadAd_Plot(CurrentPlot);
            UploadImages();
            Response.Redirect("Index.aspx");
        }

        private Plot CreatePlotObject()
        {

            Plot P = new Plot(
                txtPropertyTitle.Text,
                int.Parse(ddBlock.SelectedValue),
                (int)Session["ID"],
                int.Parse(txtSize.Text),
                ddSizeUnit.SelectedValue,
                long.Parse(txtPricePlot.Text),
                txtDescriptionPlot.Text,
                chkLeased.Checked);

            return P;
        }

        protected void btnSubmitFlat_Click(object sender, EventArgs e)
        {
            Appartment CurrentAppartment = CreateAppartmentObject();
            PropertyData.UploadAd_Appartment(CurrentAppartment);
            UploadImages();
            Response.Redirect("Index.aspx");
        
        }

        private Appartment CreateAppartmentObject()
        {

            Appartment A = new Appartment(
                txtPropertyTitle.Text,
                int.Parse(ddBlock.SelectedValue),
                (int)Session["ID"],
                int.Parse(txtSize.Text),
                ddSizeUnit.SelectedValue,
                long.Parse(txtPriceFlat.Text),
                txtareaDescriptionFlat.Text,
                txtAppartmentName.Text,
                txtBlock.Text,
                int.Parse(txtFlatFloor.Text),
                int.Parse(txtFlatNumberOfRooms.Text),
                int.Parse(txtFlatFurnish.Text),
                GetAppartmentType()
                );

            return A;
        }

        private string GetAppartmentType()
        {
            if (radiobtnSellFlat.Checked)
                return "Sell";

            else if (radiobtnRentFlat.Checked)
                return "Rent";

            else
                return "Sell";
        }

        protected void ddHouseAreaType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (ddHouseAreaType.SelectedValue == "Full")
            {
                divHouseFull.Attributes.Add("style", "display:block");
                divHousePortion.Attributes.Add("style", "display:none");

                vldhousefullfloorsregex.Enabled = true;
                vldhousefullfloorsreq.Enabled = true;
                vldhousefullroomsregex.Enabled = true;
                vldhousefullroomsreq.Enabled = true;

                vldhouseportionregex.Enabled = false;
                vldhouseportionreq.Enabled = false;
                vldhouseportionroomsregex.Enabled = false;
                vldhouseportionroomsreq.Enabled = false;
            }

            else
            {
                divHouseFull.Attributes.Add("style", "display:none");
                divHousePortion.Attributes.Add("style", "display:block");

                vldhousefullfloorsregex.Enabled = false;
                vldhousefullfloorsreq.Enabled = false;
                vldhousefullroomsregex.Enabled = false;
                vldhousefullroomsreq.Enabled = false;

                vldhouseportionregex.Enabled = true;
                vldhouseportionreq.Enabled = true;
                vldhouseportionroomsregex.Enabled = true;
                vldhouseportionroomsreq.Enabled = true;
            }
        }

        protected void btnSubmitHouse_Click(object sender, EventArgs e)
        {
            if (ddHouseAreaType.SelectedValue == "Full")
            {
                House_Full CurrentHouse_Full = CreateHouseFullObject();
                PropertyData.UploadAd_House_Full(CurrentHouse_Full);
            }

            else if (ddHouseAreaType.SelectedValue == "Portion")
            {
                House_Portion CurrentHouse_Portion = CreateHousePortionObject();
                PropertyData.UploadAd_House_Portion(CurrentHouse_Portion);
            }

            UploadImages();
            Response.Redirect("Index.aspx");
        }

        private House_Full CreateHouseFullObject()
        {
            House_Full H = new House_Full(
            txtPropertyTitle.Text,
                int.Parse(ddBlock.SelectedValue),
                (int)Session["ID"],
                int.Parse(txtSize.Text),
                ddSizeUnit.SelectedValue,
                int.Parse(txtPriceHouse.Text),
                txtareaDescriptionHouse.Text,
                int.Parse(txtHouseFurnish.Text),
                GetHouseType(),
                ddHousePosition.SelectedValue,
                int.Parse(txtHouseFullNumberOfRooms.Text),
                int.Parse(txtHouseFullNumberOfFloors.Text)
                );

            return H;
         }

        private House_Portion CreateHousePortionObject()
        {
            House_Portion H = new House_Portion(
            txtPropertyTitle.Text,
                int.Parse(ddBlock.SelectedValue),
                (int)Session["ID"],
                int.Parse(txtSize.Text),
                ddSizeUnit.SelectedValue,
                int.Parse(txtPriceHouse.Text),
                txtareaDescriptionHouse.Text,
                int.Parse(txtHouseFurnish.Text),
                GetHouseType(),
                ddHousePosition.SelectedValue,
                int.Parse(txtHousePortionFloor.Text),
                int.Parse(txtHousePortionNumberOfRooms.Text)
                );
            return H;
        }

        private string GetHouseType()
        {
            if (radiobtnSellHouse.Checked)
                return "Sell";

            else if (radiobtnRentHouse.Checked)
                return "Rent";

            else
                return "Sell";

        }

        private void UploadImages()
        {
            int CurrentProperty = PropertyData.GetLastPropertyID();
            //Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + 
            string LocalHostImagePath = "//ads//" + CurrentProperty + "//images//";
            string ImageSavePath = Server.MapPath("~//ads//" + CurrentProperty + "//images//");

            if (!Directory.Exists(Server.MapPath("~//ads//" + CurrentProperty)))
                Directory.CreateDirectory(Server.MapPath("~//ads//" + CurrentProperty));

            if (!Directory.Exists(Server.MapPath("~//ads//" + CurrentProperty + "//images//")))
                Directory.CreateDirectory(Server.MapPath("~//ads//" + CurrentProperty + "//images//"));


            for (int i = 0; i < Images.Count; i++)
            {
                PropertyData.UploadImage(LocalHostImagePath, ImageNames[i], CurrentProperty);
                PropertyData.SaveImage(ImageSavePath, ImageNames[i], Images[i]);
            }

                
        }


        protected void FileUpload1_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            ImageNames.Add(e.FileName);
            
            int Count = ImageNames.Count;
            
            string NextImage = "FileUpload" + Count;

            Control c = Page.FindControl(NextImage);
            AsyncFileUpload up = (AsyncFileUpload)c;
            
            if (up.HasFile)
                Images.Add(up.PostedFile);
        }

        protected void HouseFileUpload_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            ImageNames.Add(e.FileName);

            int Count = ImageNames.Count;

            string NextImage = "HouseFileUpload" + Count;

            Control c = Page.FindControl(NextImage);
            AsyncFileUpload up = (AsyncFileUpload)c;

            if (up.HasFile)
                Images.Add(up.PostedFile);
        }

        protected void FlatFileUpload_UploadedComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
        {
            ImageNames.Add(e.FileName);

            int Count = ImageNames.Count;

            string NextImage = "FlatFileUpload" + Count;

            Control c = Page.FindControl(NextImage);
            AsyncFileUpload up = (AsyncFileUpload)c;

            if (up.HasFile)
                Images.Add(up.PostedFile);
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