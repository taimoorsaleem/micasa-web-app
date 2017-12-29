using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MiCasa_Final_Project
{
    public class LoginController : ApiController
    {
        

        //public DataLink.Plot GetPlot()
        //{
        //    DataLink.Plot p = DataLink.PropertyData.GetPlotDetails(5);
        //    return p;
        //}

        [Route("api/login/{Email}/{Password}")]
        public int Get(string Email,string Password)
        {
            return DataLink.UserData.Login(Email, Password);
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