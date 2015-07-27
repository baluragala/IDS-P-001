﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.Models;

namespace IPAPPM.Web.Portal.Controllers
{
    [Authorize]
    public class AdminLogController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /AdminLog/

        public ActionResult Index()
        {
            return View(db.tbl_LoginAudit.OrderByDescending(l=>l.LoginTime).ToList());
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