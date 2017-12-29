using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

namespace MiCasa_Final_Project
{
    public partial class searchResult : System.Web.UI.Page
    {

        DataTable dt = DataLink.PropertyData.LoadPlot();



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

            if (!(Session["SEARCH_TYPE"] == null && Session["SEARCH_RESULT"] == null))
            {
                dt = (DataTable)Session["SEARCH_RESULT"];
                string st = (string)Session["SEARCH_TYPE"];

                Session["SEARCH_TYPE"] = null;
                Session["SEARCH_RESULT"] = null;

                if (st == "appartment")
                {

                    foreach (DataRow r in dt.Rows)
                    {


                        HtmlGenericControl div1 = new HtmlGenericControl("div");
                        div1.Attributes.Add("class", "box");
                        div1.Attributes.Add("style", "width:80%; margin-left:10%; margin-right:10%");

                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes.Add("class", "post");
                        div2.Attributes.Add("style", "padding-bottom:1%;padding-top:1%;margin-left:auto; margin-right:auto; width:95%");

                        div1.Controls.Add(div2);

                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes.Add("class", "row");

                        div2.Controls.Add(div3);

                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes.Add("class", "col-sm-6");
                        div4.Attributes.Add("style", "width:60%");

                        div3.Controls.Add(div4);

                        HtmlGenericControl img = new HtmlGenericControl("img");
                        img.Attributes.Add("id", "0");
                        img.Attributes.Add("class", "img-responsive");
                        img.Attributes.Add("style", "height:300px");
                        if (!(r[7].ToString() == ""))
                            img.Attributes.Add("src", r[7].ToString());

                        else
                            img.Attributes.Add("src", Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//dist//img//no-picture.jpg");

                        div4.Controls.Add(img);

                        HtmlGenericControl div5 = new HtmlGenericControl("div");
                        div5.Attributes.Add("class", "col-sm-6");
                        div5.Attributes.Add("style", "width:40%");

                        div3.Controls.Add(div5);

                        HtmlGenericControl div6 = new HtmlGenericControl("div");
                        div6.Attributes.Add("class", "box-body box-profile");
                        div6.Attributes.Add("style", "width:95%;height:100%;margin-top:2%; margin-left:auto; margin-right:auto");

                        div5.Controls.Add(div6);

                        HtmlGenericControl heading = new HtmlGenericControl("h3");
                        heading.Attributes.Add("class", "profile-username text-center");

                        div6.Controls.Add(heading);

                        HtmlGenericControl headingspan = new HtmlGenericControl("span");
                        headingspan.InnerText = r[1].ToString();

                        heading.Controls.Add(headingspan);

                        HtmlGenericControl modep = new HtmlGenericControl("p");
                        modep.Attributes.Add("class", "text-muted text-center");

                        div6.Controls.Add(modep);

                        HtmlGenericControl modespan = new HtmlGenericControl("span");
                        modespan.InnerText = "For " + r[2].ToString();

                        modep.Controls.Add(modespan);

                        HtmlGenericControl list = new HtmlGenericControl("ul");
                        list.Attributes.Add("class", "list-group list-group-unbordered");

                        div6.Controls.Add(list);

                        //================================================================================

                        HtmlGenericControl itype = new HtmlGenericControl("li");
                        itype.Attributes.Add("class", "list-group-item");



                        HtmlGenericControl itypeheading = new HtmlGenericControl("b");
                        itypeheading.InnerText = "Type";



                        HtmlGenericControl atype = new HtmlGenericControl("a");
                        atype.Attributes.Add("class", "pull-right");



                        HtmlGenericControl typespan = new HtmlGenericControl("span");
                        typespan.InnerText = "Appartment";

                        atype.Controls.Add(typespan);

                        itype.Controls.Add(itypeheading);
                        itype.Controls.Add(atype);
                        list.Controls.Add(itype);
                        //================================================================================

                        HtmlGenericControl ilocation = new HtmlGenericControl("li");
                        ilocation.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(ilocation);

                        HtmlGenericControl ilocheading = new HtmlGenericControl("b");
                        ilocheading.InnerText = "Location";

                        ilocation.Controls.Add(ilocheading);

                        HtmlGenericControl alocation = new HtmlGenericControl("a");
                        alocation.Attributes.Add("class", "pull-right");

                        ilocation.Controls.Add(alocation);

                        HtmlGenericControl locspan = new HtmlGenericControl("span");
                        locspan.InnerText = r[3].ToString();

                        alocation.Controls.Add(locspan);

                        //================================================================================

                        HtmlGenericControl isize = new HtmlGenericControl("li");
                        isize.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(isize);

                        HtmlGenericControl isizeheading = new HtmlGenericControl("b");
                        isizeheading.InnerText = "Size";

                        isize.Controls.Add(isizeheading);

                        HtmlGenericControl asize = new HtmlGenericControl("a");
                        asize.Attributes.Add("class", "pull-right");

                        isize.Controls.Add(asize);

                        HtmlGenericControl sizespan = new HtmlGenericControl("span");
                        sizespan.InnerText = r[4].ToString() + " " + r[5].ToString();

                        asize.Controls.Add(sizespan);

                        //================================================================================

                        HtmlGenericControl iprice = new HtmlGenericControl("li");
                        iprice.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(iprice);

                        HtmlGenericControl ipriceheading = new HtmlGenericControl("b");
                        ipriceheading.InnerText = "Price";

                        iprice.Controls.Add(ipriceheading);

                        HtmlGenericControl aprice = new HtmlGenericControl("a");
                        aprice.Attributes.Add("class", "pull-right");

                        iprice.Controls.Add(aprice);

                        HtmlGenericControl pricespan = new HtmlGenericControl("span");
                        pricespan.InnerText = "PKR. " + r[6].ToString();

                        aprice.Controls.Add(pricespan);

                        //================================================================================

                        HtmlGenericControl buttonspan = new HtmlGenericControl("span");
                        buttonspan.Attributes.Add("class", "input-grp-btn");

                        div6.Controls.Add(buttonspan);

                        HtmlGenericControl button = new HtmlGenericControl("button");
                        button.Attributes.Add("type", "button");
                        button.Attributes.Add("onclick", "details_appartment(this.id)");
                        button.InnerText = "View Ad";
                        button.Attributes.Add("id", r[0].ToString());
                        button.Attributes.Add("style", "margin-top: -10px");
                        button.Attributes.Add("class", "btn btn-block btn-info");



                        //Button button = new Button();
                        ////Control button = new Control("asp:button");
                        ////HtmlGenericControl button = new HtmlGenericControl("input");
                        //button.Text = "View Ad";
                        //button.Attributes.Add("id", r[0].ToString());
                        //button.Attributes.Add("type", "submit");


                        //button.Attributes.Add("style", "margin-top: -10px");
                        //button.Attributes.Add("class", "btn btn-block btn-info");

                        buttonspan.Controls.Add(button);

                        content.Controls.Add(div1);
                    }
                }

                else if (st == "house_full")
                {

                    foreach (DataRow r in dt.Rows)
                    {


                        HtmlGenericControl div1 = new HtmlGenericControl("div");
                        div1.Attributes.Add("class", "box");
                        div1.Attributes.Add("style", "width:80%; margin-left:10%; margin-right:10%");

                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes.Add("class", "post");
                        div2.Attributes.Add("style", "padding-bottom:1%;padding-top:1%;margin-left:auto; margin-right:auto; width:95%");

                        div1.Controls.Add(div2);

                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes.Add("class", "row");

                        div2.Controls.Add(div3);

                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes.Add("class", "col-sm-6");
                        div4.Attributes.Add("style", "width:60%");

                        div3.Controls.Add(div4);

                        HtmlGenericControl img = new HtmlGenericControl("img");
                        img.Attributes.Add("id", "0");
                        img.Attributes.Add("class", "img-responsive");
                        img.Attributes.Add("style", "height:300px");
                        if (!(r[7].ToString() == ""))
                            img.Attributes.Add("src", r[7].ToString());

                        else
                            img.Attributes.Add("src", Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//dist//img//no-picture.jpg");

                        div4.Controls.Add(img);

                        HtmlGenericControl div5 = new HtmlGenericControl("div");
                        div5.Attributes.Add("class", "col-sm-6");
                        div5.Attributes.Add("style", "width:40%");

                        div3.Controls.Add(div5);

                        HtmlGenericControl div6 = new HtmlGenericControl("div");
                        div6.Attributes.Add("class", "box-body box-profile");
                        div6.Attributes.Add("style", "width:95%;height:100%;margin-top:2%; margin-left:auto; margin-right:auto");

                        div5.Controls.Add(div6);

                        HtmlGenericControl heading = new HtmlGenericControl("h3");
                        heading.Attributes.Add("class", "profile-username text-center");

                        div6.Controls.Add(heading);

                        HtmlGenericControl headingspan = new HtmlGenericControl("span");
                        headingspan.InnerText = r[1].ToString();

                        heading.Controls.Add(headingspan);

                        HtmlGenericControl modep = new HtmlGenericControl("p");
                        modep.Attributes.Add("class", "text-muted text-center");

                        div6.Controls.Add(modep);

                        HtmlGenericControl modespan = new HtmlGenericControl("span");
                        modespan.InnerText = "For " + r[2].ToString();

                        modep.Controls.Add(modespan);

                        HtmlGenericControl list = new HtmlGenericControl("ul");
                        list.Attributes.Add("class", "list-group list-group-unbordered");

                        div6.Controls.Add(list);

                        //================================================================================

                        HtmlGenericControl itype = new HtmlGenericControl("li");
                        itype.Attributes.Add("class", "list-group-item");



                        HtmlGenericControl itypeheading = new HtmlGenericControl("b");
                        itypeheading.InnerText = "Type";



                        HtmlGenericControl atype = new HtmlGenericControl("a");
                        atype.Attributes.Add("class", "pull-right");



                        HtmlGenericControl typespan = new HtmlGenericControl("span");
                        typespan.InnerText = "House(Full)";

                        atype.Controls.Add(typespan);

                        itype.Controls.Add(itypeheading);
                        itype.Controls.Add(atype);
                        list.Controls.Add(itype);
                        //================================================================================

                        HtmlGenericControl ilocation = new HtmlGenericControl("li");
                        ilocation.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(ilocation);

                        HtmlGenericControl ilocheading = new HtmlGenericControl("b");
                        ilocheading.InnerText = "Location";

                        ilocation.Controls.Add(ilocheading);

                        HtmlGenericControl alocation = new HtmlGenericControl("a");
                        alocation.Attributes.Add("class", "pull-right");

                        ilocation.Controls.Add(alocation);

                        HtmlGenericControl locspan = new HtmlGenericControl("span");
                        locspan.InnerText = r[3].ToString();

                        alocation.Controls.Add(locspan);

                        //================================================================================

                        HtmlGenericControl isize = new HtmlGenericControl("li");
                        isize.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(isize);

                        HtmlGenericControl isizeheading = new HtmlGenericControl("b");
                        isizeheading.InnerText = "Size";

                        isize.Controls.Add(isizeheading);

                        HtmlGenericControl asize = new HtmlGenericControl("a");
                        asize.Attributes.Add("class", "pull-right");

                        isize.Controls.Add(asize);

                        HtmlGenericControl sizespan = new HtmlGenericControl("span");
                        sizespan.InnerText = r[4].ToString() + " " + r[5].ToString();

                        asize.Controls.Add(sizespan);

                        //================================================================================

                        HtmlGenericControl iprice = new HtmlGenericControl("li");
                        iprice.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(iprice);

                        HtmlGenericControl ipriceheading = new HtmlGenericControl("b");
                        ipriceheading.InnerText = "Price";

                        iprice.Controls.Add(ipriceheading);

                        HtmlGenericControl aprice = new HtmlGenericControl("a");
                        aprice.Attributes.Add("class", "pull-right");

                        iprice.Controls.Add(aprice);

                        HtmlGenericControl pricespan = new HtmlGenericControl("span");
                        pricespan.InnerText = "PKR. " + r[6].ToString();

                        aprice.Controls.Add(pricespan);

                        //================================================================================

                        HtmlGenericControl buttonspan = new HtmlGenericControl("span");
                        buttonspan.Attributes.Add("class", "input-grp-btn");

                        div6.Controls.Add(buttonspan);

                        HtmlGenericControl button = new HtmlGenericControl("button");
                        button.Attributes.Add("type", "button");
                        button.Attributes.Add("onclick", "details_house_full(this.id)");
                        button.InnerText = "View Ad";
                        button.Attributes.Add("id", r[0].ToString());
                        button.Attributes.Add("style", "margin-top: -10px");
                        button.Attributes.Add("class", "btn btn-block btn-info");

                        //Button button = new Button();
                        ////Control button = new Control("asp:button");
                        ////HtmlGenericControl button = new HtmlGenericControl("input");
                        //button.Text = "View Ad";
                        //button.Attributes.Add("id", r[0].ToString());
                        //button.Attributes.Add("type", "submit");

                        //button.Attributes.Add("style", "margin-top: -10px");
                        //button.Attributes.Add("class", "btn btn-block btn-info");

                        buttonspan.Controls.Add(button);

                        content.Controls.Add(div1);
                    }
                }

                else if (st == "house_portion")
                {

                    foreach (DataRow r in dt.Rows)
                    {


                        HtmlGenericControl div1 = new HtmlGenericControl("div");
                        div1.Attributes.Add("class", "box");
                        div1.Attributes.Add("style", "width:80%; margin-left:10%; margin-right:10%");

                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes.Add("class", "post");
                        div2.Attributes.Add("style", "padding-bottom:1%;padding-top:1%;margin-left:auto; margin-right:auto; width:95%");

                        div1.Controls.Add(div2);

                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes.Add("class", "row");

                        div2.Controls.Add(div3);

                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes.Add("class", "col-sm-6");
                        div4.Attributes.Add("style", "width:60%");

                        div3.Controls.Add(div4);

                        HtmlGenericControl img = new HtmlGenericControl("img");
                        img.Attributes.Add("id", "0");
                        img.Attributes.Add("class", "img-responsive");
                        img.Attributes.Add("style", "height:300px");
                        if (!(r[7].ToString() == ""))
                            img.Attributes.Add("src", r[7].ToString());

                        else
                            img.Attributes.Add("src", Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//dist//img//no-picture.jpg");

                        div4.Controls.Add(img);

                        HtmlGenericControl div5 = new HtmlGenericControl("div");
                        div5.Attributes.Add("class", "col-sm-6");
                        div5.Attributes.Add("style", "width:40%");

                        div3.Controls.Add(div5);

                        HtmlGenericControl div6 = new HtmlGenericControl("div");
                        div6.Attributes.Add("class", "box-body box-profile");
                        div6.Attributes.Add("style", "width:95%;height:100%;margin-top:2%; margin-left:auto; margin-right:auto");

                        div5.Controls.Add(div6);

                        HtmlGenericControl heading = new HtmlGenericControl("h3");
                        heading.Attributes.Add("class", "profile-username text-center");

                        div6.Controls.Add(heading);

                        HtmlGenericControl headingspan = new HtmlGenericControl("span");
                        headingspan.InnerText = r[1].ToString();

                        heading.Controls.Add(headingspan);

                        HtmlGenericControl modep = new HtmlGenericControl("p");
                        modep.Attributes.Add("class", "text-muted text-center");

                        div6.Controls.Add(modep);

                        HtmlGenericControl modespan = new HtmlGenericControl("span");
                        modespan.InnerText = "For " + r[2].ToString();

                        modep.Controls.Add(modespan);

                        HtmlGenericControl list = new HtmlGenericControl("ul");
                        list.Attributes.Add("class", "list-group list-group-unbordered");

                        div6.Controls.Add(list);

                        //================================================================================

                        HtmlGenericControl itype = new HtmlGenericControl("li");
                        itype.Attributes.Add("class", "list-group-item");



                        HtmlGenericControl itypeheading = new HtmlGenericControl("b");
                        itypeheading.InnerText = "Type";



                        HtmlGenericControl atype = new HtmlGenericControl("a");
                        atype.Attributes.Add("class", "pull-right");



                        HtmlGenericControl typespan = new HtmlGenericControl("span");
                        typespan.InnerText = "House(Portion)";

                        atype.Controls.Add(typespan);

                        itype.Controls.Add(itypeheading);
                        itype.Controls.Add(atype);
                        list.Controls.Add(itype);
                        //================================================================================

                        HtmlGenericControl ilocation = new HtmlGenericControl("li");
                        ilocation.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(ilocation);

                        HtmlGenericControl ilocheading = new HtmlGenericControl("b");
                        ilocheading.InnerText = "Location";

                        ilocation.Controls.Add(ilocheading);

                        HtmlGenericControl alocation = new HtmlGenericControl("a");
                        alocation.Attributes.Add("class", "pull-right");

                        ilocation.Controls.Add(alocation);

                        HtmlGenericControl locspan = new HtmlGenericControl("span");
                        locspan.InnerText = r[3].ToString();

                        alocation.Controls.Add(locspan);

                        //================================================================================

                        HtmlGenericControl isize = new HtmlGenericControl("li");
                        isize.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(isize);

                        HtmlGenericControl isizeheading = new HtmlGenericControl("b");
                        isizeheading.InnerText = "Size";

                        isize.Controls.Add(isizeheading);

                        HtmlGenericControl asize = new HtmlGenericControl("a");
                        asize.Attributes.Add("class", "pull-right");

                        isize.Controls.Add(asize);

                        HtmlGenericControl sizespan = new HtmlGenericControl("span");
                        sizespan.InnerText = r[4].ToString() + " " + r[5].ToString();

                        asize.Controls.Add(sizespan);

                        //================================================================================

                        HtmlGenericControl iprice = new HtmlGenericControl("li");
                        iprice.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(iprice);

                        HtmlGenericControl ipriceheading = new HtmlGenericControl("b");
                        ipriceheading.InnerText = "Price";

                        iprice.Controls.Add(ipriceheading);

                        HtmlGenericControl aprice = new HtmlGenericControl("a");
                        aprice.Attributes.Add("class", "pull-right");

                        iprice.Controls.Add(aprice);

                        HtmlGenericControl pricespan = new HtmlGenericControl("span");
                        pricespan.InnerText = "PKR. " + r[6].ToString();

                        aprice.Controls.Add(pricespan);

                        //================================================================================

                        HtmlGenericControl buttonspan = new HtmlGenericControl("span");
                        buttonspan.Attributes.Add("class", "input-grp-btn");

                        div6.Controls.Add(buttonspan);

                        HtmlGenericControl button = new HtmlGenericControl("button");
                        button.Attributes.Add("type", "button");
                        button.Attributes.Add("onclick", "details_house_portion(this.id)");
                        button.InnerText = "View Ad";
                        button.Attributes.Add("id", r[0].ToString());
                        button.Attributes.Add("style", "margin-top: -10px");
                        button.Attributes.Add("class", "btn btn-block btn-info");

                        //Button button = new Button();
                        ////Control button = new Control("asp:button");
                        ////HtmlGenericControl button = new HtmlGenericControl("input");
                        //button.Text = "View Ad";
                        //button.Attributes.Add("id", r[0].ToString());
                        //button.Attributes.Add("type", "submit");

                        button.Attributes.Add("style", "margin-top: -10px");
                        button.Attributes.Add("class", "btn btn-block btn-info");

                        buttonspan.Controls.Add(button);

                        content.Controls.Add(div1);
                    }
                }

                else if (st == "plot")
                {

                    foreach (DataRow r in dt.Rows)
                    {


                        HtmlGenericControl div1 = new HtmlGenericControl("div");
                        div1.Attributes.Add("class", "box");
                        div1.Attributes.Add("style", "width:80%; margin-left:10%; margin-right:10%");

                        HtmlGenericControl div2 = new HtmlGenericControl("div");
                        div2.Attributes.Add("class", "post");
                        div2.Attributes.Add("style", "padding-bottom:1%;padding-top:1%;margin-left:auto; margin-right:auto; width:95%");

                        div1.Controls.Add(div2);

                        HtmlGenericControl div3 = new HtmlGenericControl("div");
                        div3.Attributes.Add("class", "row");

                        div2.Controls.Add(div3);

                        HtmlGenericControl div4 = new HtmlGenericControl("div");
                        div4.Attributes.Add("class", "col-sm-6");
                        div4.Attributes.Add("style", "width:60%");

                        div3.Controls.Add(div4);

                        HtmlGenericControl img = new HtmlGenericControl("img");
                        img.Attributes.Add("id", "0");
                        img.Attributes.Add("class", "img-responsive");
                        img.Attributes.Add("style", "height:300px");
                        if (!(r[6].ToString() == ""))
                            img.Attributes.Add("src", r[6].ToString());

                        else
                            img.Attributes.Add("src", Request.Url.GetLeftPart(UriPartial.Authority) + Request.ApplicationPath + "//dist//img//no-picture.jpg");

                        div4.Controls.Add(img);

                        HtmlGenericControl div5 = new HtmlGenericControl("div");
                        div5.Attributes.Add("class", "col-sm-6");
                        div5.Attributes.Add("style", "width:40%");

                        div3.Controls.Add(div5);

                        HtmlGenericControl div6 = new HtmlGenericControl("div");
                        div6.Attributes.Add("class", "box-body box-profile");
                        div6.Attributes.Add("style", "width:95%;height:100%;margin-top:2%; margin-left:auto; margin-right:auto");

                        div5.Controls.Add(div6);

                        HtmlGenericControl heading = new HtmlGenericControl("h3");
                        heading.Attributes.Add("class", "profile-username text-center");

                        div6.Controls.Add(heading);

                        HtmlGenericControl headingspan = new HtmlGenericControl("span");
                        headingspan.InnerText = r[1].ToString();

                        heading.Controls.Add(headingspan);

                        HtmlGenericControl modep = new HtmlGenericControl("p");
                        modep.Attributes.Add("class", "text-muted text-center");

                        div6.Controls.Add(modep);

                        HtmlGenericControl modespan = new HtmlGenericControl("span");
                        modespan.InnerText = "For Sell";

                        modep.Controls.Add(modespan);

                        HtmlGenericControl list = new HtmlGenericControl("ul");
                        list.Attributes.Add("class", "list-group list-group-unbordered");

                        div6.Controls.Add(list);

                        //================================================================================

                        HtmlGenericControl itype = new HtmlGenericControl("li");
                        itype.Attributes.Add("class", "list-group-item");



                        HtmlGenericControl itypeheading = new HtmlGenericControl("b");
                        itypeheading.InnerText = "Type";



                        HtmlGenericControl atype = new HtmlGenericControl("a");
                        atype.Attributes.Add("class", "pull-right");



                        HtmlGenericControl typespan = new HtmlGenericControl("span");
                        typespan.InnerText = "Plot";

                        atype.Controls.Add(typespan);

                        itype.Controls.Add(itypeheading);
                        itype.Controls.Add(atype);
                        list.Controls.Add(itype);
                        //================================================================================

                        HtmlGenericControl ilocation = new HtmlGenericControl("li");
                        ilocation.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(ilocation);

                        HtmlGenericControl ilocheading = new HtmlGenericControl("b");
                        ilocheading.InnerText = "Location";

                        ilocation.Controls.Add(ilocheading);

                        HtmlGenericControl alocation = new HtmlGenericControl("a");
                        alocation.Attributes.Add("class", "pull-right");

                        ilocation.Controls.Add(alocation);

                        HtmlGenericControl locspan = new HtmlGenericControl("span");
                        locspan.InnerText = r[2].ToString();

                        alocation.Controls.Add(locspan);

                        //================================================================================

                        HtmlGenericControl isize = new HtmlGenericControl("li");
                        isize.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(isize);

                        HtmlGenericControl isizeheading = new HtmlGenericControl("b");
                        isizeheading.InnerText = "Size";

                        isize.Controls.Add(isizeheading);

                        HtmlGenericControl asize = new HtmlGenericControl("a");
                        asize.Attributes.Add("class", "pull-right");

                        isize.Controls.Add(asize);

                        HtmlGenericControl sizespan = new HtmlGenericControl("span");
                        sizespan.InnerText = r[3].ToString() + " " + r[4].ToString();

                        asize.Controls.Add(sizespan);

                        //================================================================================

                        HtmlGenericControl iprice = new HtmlGenericControl("li");
                        iprice.Attributes.Add("class", "list-group-item");

                        list.Controls.Add(iprice);

                        HtmlGenericControl ipriceheading = new HtmlGenericControl("b");
                        ipriceheading.InnerText = "Price";

                        iprice.Controls.Add(ipriceheading);

                        HtmlGenericControl aprice = new HtmlGenericControl("a");
                        aprice.Attributes.Add("class", "pull-right");

                        iprice.Controls.Add(aprice);

                        HtmlGenericControl pricespan = new HtmlGenericControl("span");
                        pricespan.InnerText = "PKR. " + r[5].ToString();

                        aprice.Controls.Add(pricespan);

                        //================================================================================

                        HtmlGenericControl buttonspan = new HtmlGenericControl("span");
                        buttonspan.Attributes.Add("class", "input-grp-btn");

                        div6.Controls.Add(buttonspan);

                        //Button button = new Button();
                        HtmlGenericControl button = new HtmlGenericControl("button");
                        button.Attributes.Add("type", "button");
                        button.Attributes.Add("onclick", "details_plot(this.id)");
                        button.InnerText = "View Ad";
                        button.Attributes.Add("id", r[0].ToString());
                        button.Attributes.Add("style", "margin-top: -10px");
                        button.Attributes.Add("class", "btn btn-block btn-info");

                        buttonspan.Controls.Add(button);

                        content.Controls.Add(div1);
                    }
                }
            }

            else
                Response.Redirect("Search.aspx");


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