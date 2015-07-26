using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IPAPPM.Web.Api.Models
{
    public class CompanyType
    {
        public String Type { get; set; }
        public String TargetType { get; set; }
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        public List<CompanyType> GetCompanyTypes()
        {
            List<CompanyType> companyTypes;
            companyTypes = (from c in db.tbl_CompanyType.ToList()
                            
                          select new CompanyType
                          {
                              Type = c.Company_Type,
                              TargetType = c.Target_Type
                          }).ToList();
            return companyTypes;

        }
    }
}