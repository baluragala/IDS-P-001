using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IPAPPM.Web.Api.Models;

namespace IPAPPM.Web.Api.Models
{
    public class CompanyInfo
    {
        public String Name { get; set; }
        public String Text { get; set; }
        public String ImagePath { get; set; }
        public String WebSite { get; set; }
        public String CreatedBy { get; set; }
        public String ModifiedBy { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime ModifiedDate { get; set; }
    }
}