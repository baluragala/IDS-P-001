﻿using System;
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
    public class AuditController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /Audit/

        public ActionResult Index(int? page)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            
            return View(db.tbl_AuditTrail.OrderByDescending(a=>a.ActionDate).ToPagedList(pageNumber,pageSize));
        }

        public ActionResult ExportData()
        {
            GridView gv = new GridView();
            gv.DataSource = db.tbl_AuditTrail.OrderByDescending(l => l.ActionDate).ToList();
            gv.DataBind();
            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment; filename=AuditTrail-" + DateTime.Now.ToShortDateString() + ".xls");
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
        //// GET: /Audit/Details/5

        //public ActionResult Details(int id = 0)
        //{
        //    tbl_AuditTrail tbl_audittrail = db.tbl_AuditTrail.Single(t => t.AuditTrail_Id == id);
        //    if (tbl_audittrail == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_audittrail);
        //}

        ////
        //// GET: /Audit/Create

        //public ActionResult Create()
        //{
        //    return View();
        //}

        ////
        //// POST: /Audit/Create

        //[HttpPost]
        //public ActionResult Create(tbl_AuditTrail tbl_audittrail)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.tbl_AuditTrail.AddObject(tbl_audittrail);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    return View(tbl_audittrail);
        //}

        ////
        //// GET: /Audit/Edit/5

        //public ActionResult Edit(int id = 0)
        //{
        //    tbl_AuditTrail tbl_audittrail = db.tbl_AuditTrail.Single(t => t.AuditTrail_Id == id);
        //    if (tbl_audittrail == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_audittrail);
        //}

        ////
        //// POST: /Audit/Edit/5

        //[HttpPost]
        //public ActionResult Edit(tbl_AuditTrail tbl_audittrail)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.tbl_AuditTrail.Attach(tbl_audittrail);
        //        db.ObjectStateManager.ChangeObjectState(tbl_audittrail, EntityState.Modified);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(tbl_audittrail);
        //}

        ////
        //// GET: /Audit/Delete/5

        //public ActionResult Delete(int id = 0)
        //{
        //    tbl_AuditTrail tbl_audittrail = db.tbl_AuditTrail.Single(t => t.AuditTrail_Id == id);
        //    if (tbl_audittrail == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(tbl_audittrail);
        //}

        ////
        //// POST: /Audit/Delete/5

        //[HttpPost, ActionName("Delete")]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    tbl_AuditTrail tbl_audittrail = db.tbl_AuditTrail.Single(t => t.AuditTrail_Id == id);
        //    db.tbl_AuditTrail.DeleteObject(tbl_audittrail);
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