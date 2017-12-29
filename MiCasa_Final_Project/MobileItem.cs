using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiCasa_Final_Project
{
    public class MobileItem
    {
        private int iD;
        private string name, area, image;

        private long price;
              
        public MobileItem(int ID, string Name, long Price, string Area, string Image)
        {
            this.iD = ID;
            this.name = Name;
            this.price = Price;
            this.area = Area;
            this.image = Image;
        }

        public int ID
        {
            get { return iD; }

        }

        public string Name
        {
            get { return name; }
        }

        public long Price
        {
            get { return price; }
        }

        public string Area
        {
            get { return area; }
        }

        public string Image
        {
            get { return image; }
        }
    }
}