using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using IPAPPM.Web.Api.Models;

namespace IPAPPM.Web.Api.Controllers
{
    public class ProductController : ApiController
    {
        public List<Product> GetProducts(DateTime fromTime)
        {
            return new Product().GetProducts(fromTime);
        }
    }
}
