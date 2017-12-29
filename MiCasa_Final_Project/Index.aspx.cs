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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Host = Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath;

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

            DataTable Recents = DataLink.PropertyData.GetRecents();

            if (!(Recents == null))
            {
                foreach (DataRow r in Recents.Rows)
                {
                    DataTable Images = DataLink.PropertyData.GetTopImages(int.Parse(r["pid"].ToString()));

                    HtmlGenericControl row = new HtmlGenericControl("div");
                    row.Attributes.Add("class", "row");

                    HtmlGenericControl inrow = new HtmlGenericControl("div");
                    inrow.Attributes.Add("class", "col-md-9");
                    inrow.Attributes.Add("style", "width:99%;magin-left:auto;margin-right:auto;");

                    row.Controls.Add(inrow);

                    HtmlGenericControl navtab = new HtmlGenericControl("div");
                    navtab.Attributes.Add("class", "nav-tabs-custom");

                    inrow.Controls.Add(navtab);

                    HtmlGenericControl tabcontent = new HtmlGenericControl("div");
                    tabcontent.Attributes.Add("class", "tab-content");

                    navtab.Controls.Add(tabcontent);

                    HtmlGenericControl tabactive = new HtmlGenericControl("div");
                    tabactive.Attributes.Add("class", "tab-pane-active");

                    tabcontent.Controls.Add(tabactive);

                    HtmlGenericControl divpost = new HtmlGenericControl("div");
                    divpost.Attributes.Add("class", "post");

                    tabactive.Controls.Add(divpost);

                    HtmlGenericControl rowbottom = new HtmlGenericControl("div");
                    rowbottom.Attributes.Add("class", "row margin-bottom");

                    divpost.Controls.Add(rowbottom);

                    HtmlGenericControl divimg1 = new HtmlGenericControl("div");
                    divimg1.Attributes.Add("class", "col-sm-6");
                    divimg1.Attributes.Add("style", "height:315px");

                    HtmlGenericControl img1 = new HtmlGenericControl("img");
                    img1.Attributes.Add("class", "img-responsive");
                    //===================================================================================================================================
                    //img1.Attributes.Add("src", GetImage(Images.Rows[0]));
                    if (Images.Rows.Count > 0) 
                    img1.Attributes.Add("src", Host + Images.Rows[0][0].ToString());

                    else
                    img1.Attributes.Add("src", "/dist/img/no-picture.jpg");
                    //===================================================================================================================================
                    img1.Attributes.Add("alt", "Photo");
                    img1.Attributes.Add("style", "height:100%; width:100%");

                    divimg1.Controls.Add(img1);

                    rowbottom.Controls.Add(divimg1);

                    HtmlGenericControl divimg2 = new HtmlGenericControl("div");
                    divimg2.Attributes.Add("class", "col-sm-6");

                    HtmlGenericControl divrow2 = new HtmlGenericControl("div");
                    divrow2.Attributes.Add("class", "row");

                    divimg2.Controls.Add(divrow2);

                    HtmlGenericControl indivrow2 = new HtmlGenericControl("div");
                    indivrow2.Attributes.Add("class", "col-sm-6");
                    indivrow2.Attributes.Add("style", "height:315px");

                    divrow2.Controls.Add(indivrow2);

                    rowbottom.Controls.Add(divimg2);

                    HtmlGenericControl img2 = new HtmlGenericControl("img");
                    img2.Attributes.Add("class", "img-responsive");
                    //===================================================================================================================================
                    if (Images.Rows.Count > 1) 
                    img2.Attributes.Add("src", Host + Images.Rows[1][0].ToString());

                    else
                        img2.Attributes.Add("src", "/dist/img/no-picture.jpg");
                    //===================================================================================================================================
                    img2.Attributes.Add("alt", "Photo");
                    img2.Attributes.Add("style", "margin-bottom:13px;height:48%;width:100%");
                    

                    HtmlGenericControl img3 = new HtmlGenericControl("img");
                    img3.Attributes.Add("class", "img-responsive");
                    //===================================================================================================================================
                    if (Images.Rows.Count > 2) 
                    img3.Attributes.Add("src", Host + Images.Rows[2][0].ToString());

                    else
                        img3.Attributes.Add("src", "/dist/img/no-picture.jpg");
                    //===================================================================================================================================
                    img3.Attributes.Add("alt", "Photo");
                    img3.Attributes.Add("style", "height:48%;width:100%");

                    indivrow2.Controls.Add(img2);
                    indivrow2.Controls.Add(img3);

                    HtmlGenericControl divbox = new HtmlGenericControl("div");
                    divbox.Attributes.Add("class", "col-sm-6");

                    divrow2.Controls.Add(divbox);

                    HtmlGenericControl boxprimary = new HtmlGenericControl("div");
                    boxprimary.Attributes.Add("class", "box box-primary");
                    boxprimary.Attributes.Add("style", "margin-bottom:3%");

                    divbox.Controls.Add(boxprimary);

                    HtmlGenericControl boxprofile = new HtmlGenericControl("div");
                    boxprofile.Attributes.Add("class", "box-body box-profile");

                    divbox.Controls.Add(boxprofile);

                    HtmlGenericControl hname = new HtmlGenericControl("h1");
                    hname.Attributes.Add("class", "profile-username text-center");

                    boxprofile.Controls.Add(hname);

                    HtmlGenericControl list = new HtmlGenericControl("ul");
                    list.Attributes.Add("class", "list-group list-group-unbordered");

                    AddtoList(list, "Size", r["psize"].ToString() + " " + r["psizeunit"].ToString());
                    AddtoList(list, "Owner", r["uname"].ToString());
                    AddtoList(list, "Contact", Check(r["uphone"].ToString()));
                    AddtoList(list, "Email", Check(r["uemail"].ToString()));

                    boxprofile.Controls.Add(list);

                    HtmlGenericControl btnspan = new HtmlGenericControl("span");
                    btnspan.Attributes.Add("class", "input-group-btn");

                    boxprofile.Controls.Add(btnspan);

                    HtmlGenericControl btnview = new HtmlGenericControl("button");
                    btnview.Attributes.Add("class", "btn btn-info btn-flat");
                    btnview.Attributes.Add("style", "margin-top:63px; width:100%");
                    btnview.Attributes.Add("type", "button");
                    btnview.Attributes.Add("id", r["pid"].ToString());
                    btnview.Attributes.Add("onclick", "redirect(h" + int.Parse(r["pid"].ToString()) + ", this.id)");
                    btnview.InnerText = "Details";

                    btnspan.Controls.Add(btnview);

                    HtmlGenericControl endlist = new HtmlGenericControl("ul");
                    endlist.Attributes.Add("class", "list-inline");

                    HtmlGenericControl itemlocation = new HtmlGenericControl("li");

                    endlist.Controls.Add(itemlocation);

                    HtmlGenericControl ilocation = new HtmlGenericControl("i");
                    ilocation.Attributes.Add("style", "font-size:20px");

                    itemlocation.Controls.Add(ilocation);

                    HtmlGenericControl blocation = new HtmlGenericControl("b");
                    blocation.InnerText = r["aname"].ToString() + ", " + r["cname"].ToString();

                    ilocation.Controls.Add(blocation);

                    HtmlGenericControl itemprice = new HtmlGenericControl("li");
                    itemprice.Attributes.Add("class", "pull-right");

                    endlist.Controls.Add(itemprice);

                    HtmlGenericControl iprice = new HtmlGenericControl("i");
                    iprice.Attributes.Add("style", "font-size:20px");

                    itemprice.Controls.Add(iprice);

                    HtmlGenericControl bprice = new HtmlGenericControl("b");
                    bprice.InnerText = "PKR. " + r["pprice"].ToString();

                    iprice.Controls.Add(bprice);

                    HtmlGenericControl hidden = new HtmlGenericControl("input");
                    hidden.Attributes.Add("type", "hidden");
                    hidden.Attributes.Add("id", "h" + r["pid"]);
                    hidden.Attributes.Add("value", DataLink.PropertyData.GetPropertyTypeByID(int.Parse(r["pid"].ToString())));

                    btnview.Controls.Add(hidden);
                    divpost.Controls.Add(endlist);


                    contentsection.Controls.Add(row);
                }

            }
        }
        private void AddtoList(HtmlGenericControl ItemList,string ItemTitle, string ItemValue )
        {
            HtmlGenericControl listitem = new HtmlGenericControl("li");
            listitem.Attributes.Add("class", "list-group-item");

            HtmlGenericControl title = new HtmlGenericControl("b");
            title.InnerText = ItemTitle;

            HtmlGenericControl value = new HtmlGenericControl("a");
            value.Attributes.Add("class", "pull-right");
            value.InnerText = ItemValue;

            listitem.Controls.Add(title);
            listitem.Controls.Add(value);

            ItemList.Controls.Add(listitem);
        }

        //private string GetImage(DataRow Value)
        //{
        //    if (Value == null)
        //        return "/dist/img/no-picture.jpg";

        //    else return Value.ToString();
        //}

        private string Check(string Value)
        {
            if (Value == "")
                return "N/A";

            else
                return Value;
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