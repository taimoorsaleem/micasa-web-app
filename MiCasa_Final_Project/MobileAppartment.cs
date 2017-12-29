using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiCasa_Final_Project
{
    public class MobileAppartment
    {
        public int ID, Size, Floor, Rooms;
        public String Name, Location, OwnerName, OwnerEmail, OwnerContact, OwnerLocation, SizeUnit, AppartmentName, Block, Type;
        public long Price;

    public MobileAppartment(int ID, String Name, String Area, int Size, String SizeUnit, long Price, string Type, string AppartmentName, string Block, int Floor, int Rooms, String OwnerName, String OwnerEmail, String OwnerContact, String OwnerLocation ) {
        this.ID = ID;
        this.Name = Name;
        this.Location = Area;
        this.Size = Size;
        this.SizeUnit = SizeUnit;
        this.Price = Price;
        this.Type = Type;
        this.AppartmentName = AppartmentName;
        this.Block = Block;
        this.Floor = Floor;
        this.Rooms = Rooms;
        this.OwnerName = OwnerName;
        this.OwnerEmail = OwnerEmail;
        this.OwnerContact = OwnerContact;
        this.OwnerLocation = OwnerLocation;
    }
    }
}