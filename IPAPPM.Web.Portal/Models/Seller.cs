using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class Seller
    {
        public int Id { get; set; }
        public String Name{get;set;}
        public String Code { get; set; }
        public String Address { get; set; }
        public String PhoneNumbers { get; set; }
        public String State { get; set; }
        public String City { get; set; }

        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime ModifiedDate { get; set; }


    }
}