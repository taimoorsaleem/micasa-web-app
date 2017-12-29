using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MiCasa_Final_Project
{
    public partial class add_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            }

            if (Request.QueryString["type"] == null || Request.QueryString["id"] == null)
                Response.Redirect("Index.aspx");

            string PropertyType = (string)Request.QueryString["type"];
            int Id = int.Parse(Request.QueryString["id"]);

            

            if (PropertyType == "plot")
            {
                DataLink.Plot p = DataLink.PropertyData.GetPlotDetails(Id);
                DataLink.User u = DataLink.UserData.GetUserDetailsByID(p.Owner);

                lblPropertyTitle.Text = p.Name;
                lblPropertyType.Text = "Plot";
                lblPropertyMode.Text = "Sell";
                lblPropertyUnitSize.Text = p.Size + " " + p.SizeUnit;
                lblPropertArea.Text = DataLink.PropertyData.GetAreaNameByPropertyID(Id);
                lblPropertyPrice.Text = p.Price.ToString();
                txtdesc.Value = p.Description;

                lblUName.Text = u.Name;
                lblUserEmail.Text = Check(u.Email);
                lblUserNumber.Text = Check(u.Phone);
                lblUserLocation.Text = u.Location;

                AddListItem("Leased", LeasedValue(p.Leased));

                //HtmlGenericControl LeasedItem = new HtmlGenericControl("li");
                //LeasedItem.Attributes.Add("class", "list-group-item");

                //HtmlGenericControl lblLeased = new HtmlGenericControl("b");
                //lblLeased.InnerText = "Leased";

                //HtmlGenericControl LeasedValueAnchor = new HtmlGenericControl("a");
                //LeasedValueAnchor.Attributes.Add("class", "pull-right");

                //Label LeasedValue = new Label();
                //LeasedValue.Text = p.Leased.ToString();

                //LeasedItem.Controls.Add(lblLeased);

                //LeasedValueAnchor.Controls.Add(LeasedValue);
                //LeasedItem.Controls.Add(LeasedValueAnchor);

                //AdDetails.Controls.Add(LeasedItem);

                string LocalHostPath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//userimages//";
                UserImage.Attributes.Add("src", DataLink.UserData.GetUserImage(LocalHostPath, p.Owner));

                LoadImages(Id);

            }

            else if (PropertyType == "appartment")
            {
                DataLink.Appartment ap = DataLink.PropertyData.GetAppartmentDetails(Id);
                DataLink.User u = DataLink.UserData.GetUserDetailsByID(ap.Owner);

                lblPropertyTitle.Text = ap.Name;
                lblPropertyType.Text = "Appartment";
                lblPropertyMode.Text = "For " + ap.ApptType;
                lblPropertArea.Text = DataLink.PropertyData.GetAreaNameByPropertyID(Id);
                lblPropertyUnitSize.Text = ap.Size + " " + ap.SizeUnit;
                lblPropertyPrice.Text = ap.Price.ToString();
                txtdesc.Value = ap.Description;

                lblUName.Text = u.Name;
                lblUserEmail.Text = Check(u.Email);
                lblUserNumber.Text = Check(u.Phone);
                lblUserLocation.Text = u.Location;

                AddListItem("Floor", ap.ApptFloor.ToString());
                AddListItem("Rooms", ap.ApptRooms.ToString());

                SetCondition(ap.ApptFurnished);

                string LocalHostPath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//userimages//";
                UserImage.Attributes.Add("src", DataLink.UserData.GetUserImage(LocalHostPath, ap.Owner));

                LoadImages(Id);
            }

            else if (PropertyType == "house_full")
            {
                DataLink.House_Full h = DataLink.PropertyData.GetHouse_FullDetails(Id);
                DataLink.User u = DataLink.UserData.GetUserDetailsByID(h.Owner);

                lblPropertyTitle.Text = h.Name;
                lblPropertyType.Text = "Appartment";
                lblPropertyMode.Text = "For " + h.Type;
                lblPropertyUnitSize.Text = h.Size + " " + h.SizeUnit;
                lblPropertArea.Text = DataLink.PropertyData.GetAreaNameByPropertyID(Id);
                lblPropertyPrice.Text = h.Price.ToString();
                txtdesc.Value = h.Description;

                lblUName.Text = u.Name;
                lblUserEmail.Text = Check(u.Email);
                lblUserNumber.Text = Check(u.Phone);
                lblUserLocation.Text = u.Location;

                AddListItem("Floors", h.Floors.ToString());
                AddListItem("Rooms", h.Rooms.ToString());

                SetCondition(h.Furnished);

                string LocalHostPath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//userimages//";
                UserImage.Attributes.Add("src", DataLink.UserData.GetUserImage(LocalHostPath, h.Owner));

                LoadImages(Id);
            }

            else if (PropertyType == "house_portion")
            {
                DataLink.House_Portion h = DataLink.PropertyData.GetHouse_PortionDetails(Id);
                DataLink.User u = DataLink.UserData.GetUserDetailsByID(h.Owner);

                lblPropertyTitle.Text = h.Name;
                lblPropertyType.Text = "Appartment";
                lblPropertyMode.Text = "For " + h.Type;
                lblPropertyUnitSize.Text = h.Size + " " + h.SizeUnit;
                lblPropertArea.Text = DataLink.PropertyData.GetAreaNameByPropertyID(Id);
                lblPropertyPrice.Text = h.Price.ToString();
                txtdesc.Value = h.Description;

                lblUName.Text = u.Name;
                lblUserEmail.Text = Check(u.Email);
                lblUserNumber.Text = Check(u.Phone);
                lblUserLocation.Text = u.Location;

                AddListItem("Floor", h.Floor.ToString());
                AddListItem("Rooms", h.Rooms.ToString());

                SetCondition(h.Furnished);

                string LocalHostPath = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//userimages//";
                UserImage.Attributes.Add("src", DataLink.UserData.GetUserImage(LocalHostPath, h.Owner));

                LoadImages(Id);
            }


        }

        private string Check(string Value)
        {
            if (Value == "")
                return "N/A";

            else
                return Value;
        }

        private void LoadImages(int PropertyID)
        {
            string Host = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;
            List<string> images = DataLink.PropertyData.GetImagesByID(PropertyID, Host);
            int Count = 0;

            if (images.Count != 0)
            {
                foreach (string s in images)
                {
                    HtmlGenericControl c = new HtmlGenericControl("li");
                    c.Attributes.Add("data-target", "#carousel-example-generic");
                    c.Attributes.Add("data-slide-to", Count.ToString());

                    if (Count == 0)
                        c.Attributes.Add("class", "active");

                    counter.Controls.Add(c);

                    HtmlGenericControl d = new HtmlGenericControl("div");
                    //d.Attributes.Add("class", "item");

                    if (Count == 0)
                        d.Attributes.Add("class", "item active");
                    else
                        d.Attributes.Add("class", "item");

                    HtmlGenericControl i = new HtmlGenericControl("img");
                    i.Attributes.Add("src", s);
                    //i.Attributes.Add("style", "object-fit: fill");
                    i.Attributes.Add("style", "width:100%;");
                    i.Attributes.Add("alt", "Image " + Count);


                    d.Controls.Add(i);


                    imagecontainer.Controls.Add(d);

                    Count++;
                }
            }

            else
            {
                HtmlGenericControl c = new HtmlGenericControl("li");
                c.Attributes.Add("data-target", "#carousel-example-generic");
                c.Attributes.Add("data-slide-to", Count.ToString());

                if (Count == 0)
                    c.Attributes.Add("class", "active");

                counter.Controls.Add(c);

                HtmlGenericControl d = new HtmlGenericControl("div");
                //d.Attributes.Add("class", "item");

                if (Count == 0)
                    d.Attributes.Add("class", "item active");
                else
                    d.Attributes.Add("class", "item");

                HtmlGenericControl i = new HtmlGenericControl("img");
                i.Attributes.Add("src", "/dist/img/no-picture.jpg");
                //i.Attributes.Add("style", "object-fit: fill");
                i.Attributes.Add("style", "width:100%;");
                i.Attributes.Add("alt", "Image " + Count);


                d.Controls.Add(i);


                imagecontainer.Controls.Add(d);
            }
        }

        private void AddListItem(string Title, string Value)
        {
            HtmlGenericControl Item = new HtmlGenericControl("li");
            Item.Attributes.Add("class", "list-group-item");

            HtmlGenericControl lblTitle = new HtmlGenericControl("b");
            lblTitle.InnerText = Title;

            HtmlGenericControl ValueAnchor = new HtmlGenericControl("a");
            ValueAnchor.Attributes.Add("class", "pull-right");

            Label lblValue = new Label();
            lblValue.Text = Value;

            Item.Controls.Add(lblTitle);

            ValueAnchor.Controls.Add(lblValue);
            Item.Controls.Add(ValueAnchor);

            AdDetails.Controls.Add(Item);
        }

        private string LeasedValue(bool Leased)
        {
            if (Leased)
                return "Yes";

            else if (!Leased)
                return "No";

            else return "Yes";
        }

        private void SetCondition(int Value)
        {
            HtmlGenericControl div = new HtmlGenericControl("div");
            div.Attributes.Add("class", "text-center");
            div.Attributes.Add("style", "margin-bottom:2%;");



            HtmlGenericControl rating = new HtmlGenericControl("input");
            rating.Attributes.Add("type", "text");
            rating.Attributes.Add("class", "rating rating5 pull-right");
            rating.Attributes.Add("readonly", "readonly");
            rating.Attributes.Add("value", Value.ToString());

            
            div.Controls.Add(rating);

            PropertyBox.Controls.AddAt(5, div);
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