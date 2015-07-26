using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.ViewModels;

namespace IPAPPM.web.portal.Controllers
{
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
