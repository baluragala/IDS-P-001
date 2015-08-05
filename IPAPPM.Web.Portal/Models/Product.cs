using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String ImagePath { get; set; }
        public String Benefits { get; set; }
        public String Specifications { get; set; }
        public String EndUses { get; set; }
        public String Features { get; set; }
        public int CategoryId { get; set; }

        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime ModifiedDate { get; set; }
    }
}