using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;

namespace MiCasa_Final_Project
{
    public class AppartmentController : ApiController
    {
        [Route("api/appartment")]
        public IEnumerable<MobileItem> Get()
        {
            MobileItem[] m;
            List<MobileItem> ml = new List<MobileItem>();

            DataTable dt = DataLink.PropertyData.GetAppartmentsMobile();

            foreach (DataRow r in dt.Rows)
            {
                MobileItem mi = new MobileItem(int.Parse(r[0].ToString()), (r[1]).ToString(), long.Parse(r[2].ToString()), (r[3].ToString()), GetImage(r[4].ToString()));
                ml.Add(mi);
            }

            m = ml.ToArray();
            return m;
        }

        [Route("api/appartment/{id}")]
        public MobileAppartment Get(int ID)
        {

            DataTable dt = DataLink.PropertyData.GetAppartmentByIDMobile(ID);
            MobileAppartment ma = new MobileAppartment(int.Parse(dt.Rows[0][0].ToString()), (dt.Rows[0][1]).ToString(), (dt.Rows[0][2].ToString()) + ", " + (dt.Rows[0][3].ToString()), int.Parse(dt.Rows[0][4].ToString()), (dt.Rows[0][5].ToString()), long.Parse(dt.Rows[0][6].ToString()), (dt.Rows[0][7].ToString()), (dt.Rows[0][8].ToString()), (dt.Rows[0][9].ToString()), int.Parse(dt.Rows[0][10].ToString()), int.Parse(dt.Rows[0][11].ToString()), (dt.Rows[0][12].ToString()), (dt.Rows[0][13].ToString()), (dt.Rows[0][14].ToString()), (dt.Rows[0][15].ToString()));
            return ma;
        }

        private string GetImage(string ImagePath)
        {
            if (!(ImagePath == ""))
            {
                var imagePath = "http://" + Request.RequestUri.Host + ":" + Request.RequestUri.Port + (ImagePath);
                return imagePath;
            }

            else
            {
                var imagePath = "http://" + Request.RequestUri.Host + ":" + Request.RequestUri.Port + "/dist/img/no-picture.jpg";
                return imagePath;
            }
        }

        //// GET api/<controller>
        //public IEnumerable<string> Get()
        //{
        //    return new string[] { "value1", "value2" };
        //}

        //// GET api/<controller>/5
        //public string Get(int id)
        //{
        //    return "value";
        //}

        //// POST api/<controller>
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/<controller>/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/<controller>/5
        //public void Delete(int id)
        //{
        //}
    }
}