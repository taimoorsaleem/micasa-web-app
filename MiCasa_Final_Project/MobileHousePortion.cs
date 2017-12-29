using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiCasa_Final_Project
{
    public class MobileHousePortion
    {
        public int ID, Size, Floor, Rooms;
        public String Name, Location, OwnerName, OwnerEmail, OwnerContact, OwnerLocation, SizeUnit, Type;
        public long Price;

    public MobileHousePortion(int ID, String Name, String Area, int Size, String SizeUnit, long Price, string Type,  int Floor, int Rooms, String OwnerName, String OwnerEmail, String OwnerContact, String OwnerLocation ) {
        this.ID = ID;
        this.Name = Name;
        this.Location = Area;
        this.Size = Size;
        this.SizeUnit = SizeUnit;
        this.Price = Price;
        this.Type = Type;
        this.Floor = Floor;
        this.Rooms = Rooms;
        this.OwnerName = OwnerName;
        this.OwnerEmail = OwnerEmail;
        this.OwnerContact = OwnerContact;
        this.OwnerLocation = OwnerLocation;
    }
    }
}