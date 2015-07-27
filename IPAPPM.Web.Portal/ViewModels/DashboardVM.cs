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
        public List<tbl_AuditTrail> AuditTrails;

        

        public DashboardVM()
        {
            IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();
            LoginAudits = (from c in db.tbl_LoginAudit.OrderByDescending(c => c.LoginTime).Take(10)
                          select c).ToList();
            UserDetails = (from c in db.tbl_UserDetails.OrderByDescending(c=>c.Registered_Date).Take(10)
                           select c).ToList();
            AuditTrails = (from c in db.tbl_AuditTrail.OrderByDescending(c=>c.ActionDate).Take(10)
                           select c).ToList();

        }
    }
}