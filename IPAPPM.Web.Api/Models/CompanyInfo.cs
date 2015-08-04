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
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public CompanyInfo GetCompanyInfo(DateTime fromTime)
        {
            CompanyInfo companyInfo;
            companyInfo = (from c in db.tbl_CompanyInfo.ToList()
                           where c.ModifiedDate >= fromTime
                           select new CompanyInfo
                          {
                              Name = c.CompanyName,
                              Text = c.Text,
                              ImagePath = c.ImagePath,
                              WebSite = c.Website
                          }).Single();
            return companyInfo;

        }
    }
}