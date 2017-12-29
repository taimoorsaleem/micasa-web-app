using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiCasa_Final_Project
{
    public class MobilePlot
    {
        public int ID, Size;
        public String Name, Location, OwnerName, OwnerEmail, OwnerContact, OwnerLocation, SizeUnit;
        public long Price;
        public bool Leased;

    public MobilePlot(int ID, String Name, String Area, int Size, String SizeUnit, long Price, bool Leased, String OwnerName, String OwnerEmail, String OwnerContact, String OwnerLocation ) {
        this.ID = ID;
        this.Name = Name;
        this.Location = Area;
        this.Size = Size;
        this.SizeUnit = SizeUnit;
        this.Price = Price;
        this.Leased = Leased;
        this.OwnerName = OwnerName;
        this.OwnerEmail = OwnerEmail;
        this.OwnerContact = OwnerContact;
        this.OwnerLocation = OwnerLocation;
    }
    }
}