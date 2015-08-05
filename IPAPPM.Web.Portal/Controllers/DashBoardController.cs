using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.ViewModels;
using IPAPPM.Web.Portal.Helpers;

namespace IPAPPM.web.portal.Controllers
{
    [Authorize]  
    public class DashBoardController : Controller
    {
        //
        // GET: /DashBoard/

        public ActionResult Index()
        {
            DashboardVM model = new DashboardVM();
            return View(model);
        }

    }
}
