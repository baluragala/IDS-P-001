using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.Models;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI;
using PagedList;

namespace IPAPPM.Web.Portal.Controllers
{
    [Authorize]
    public class AdminLogController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /AdminLog/

        public ActionResult Index(int? page)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(db.tbl_LoginAudit.OrderByDescending(l => l.LoginTime).ToPagedList(pageNumber, pageSize));
        }

        public ActionResult ExportData()
        {
            GridView gv = new GridView();
            gv.DataSource = db.tbl_LoginAudit.OrderByDescending(l => l.LoginTime).ToList();
            gv.DataBind();
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment; filename=AdminLog-" + DateTime.Now.ToShortDateString() +".xls");
            Response.ContentType = "application/ms-excel";
            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            gv.RenderControl(htw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();

            return RedirectToAction("Index");
        }

        ////
        //// GET: /AdminLog/Details/5

        //public ActionResult Details(int id = 0)
        //{
        //    tbl_LoginAudit tbl_loginaudit = db.tbl_LoginAudit.Single(t => t.LAudit_Id == id);
        //    if (tbl_loginaudit == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_loginaudit);
        //}

        ////
        //// GET: /AdminLog/Create

        //public ActionResult Create()
        //{
        //    return View();
        //}

        ////
        //// POST: /AdminLog/Create

        //[HttpPost]
        //public ActionResult Create(tbl_LoginAudit tbl_loginaudit)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.tbl_LoginAudit.AddObject(tbl_loginaudit);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    return View(tbl_loginaudit);
        //}

        ////
        //// GET: /AdminLog/Edit/5

        //public ActionResult Edit(int id = 0)
        //{
        //    tbl_LoginAudit tbl_loginaudit = db.tbl_LoginAudit.Single(t => t.LAudit_Id == id);
        //    if (tbl_loginaudit == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_loginaudit);
        //}

        ////
        //// POST: /AdminLog/Edit/5

        //[HttpPost]
        //public ActionResult Edit(tbl_LoginAudit tbl_loginaudit)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.tbl_LoginAudit.Attach(tbl_loginaudit);
        //        db.ObjectStateManager.ChangeObjectState(tbl_loginaudit, EntityState.Modified);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(tbl_loginaudit);
        //}

        ////
        //// GET: /AdminLog/Delete/5

        //public ActionResult Delete(int id = 0)
        //{
        //    tbl_LoginAudit tbl_loginaudit = db.tbl_LoginAudit.Single(t => t.LAudit_Id == id);
        //    if (tbl_loginaudit == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_loginaudit);
        //}

        ////
        //// POST: /AdminLog/Delete/5

        //[HttpPost, ActionName("Delete")]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    tbl_LoginAudit tbl_loginaudit = db.tbl_LoginAudit.Single(t => t.LAudit_Id == id);
        //    db.tbl_LoginAudit.DeleteObject(tbl_loginaudit);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}