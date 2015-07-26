using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IPAPPM.Web.Portal.Models;

namespace IPAPPM.Web.Portal.ViewModels
{
    public class DashboardVM
    {
        public List<tbl_LoginAudit> LoginAudits;
        public List<tbl_UserDetails> UserDetails;

        

        public DashboardVM()
        {
            IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
            LoginAudits = (from c in db.tbl_LoginAudit
                          select c).ToList();
            UserDetails = (from c in db.tbl_UserDetails
                           select c).ToList();

        }
    }
}