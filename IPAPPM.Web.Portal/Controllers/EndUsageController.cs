using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.Models;

namespace IPAPPM.Web.Portal.Controllers
{
    public class EndUsageController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /EndUsage/

        public ActionResult Index()
        {
            return View(db.tbl_EndUsage.ToList());
        }

        //
        // GET: /EndUsage/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_EndUsage tbl_endusage = db.tbl_EndUsage.Single(t => t.EndUsage_Id == id);
            if (tbl_endusage == null)
            {
                return HttpNotFound();
            }
            return View(tbl_endusage);
        }

        //
        // GET: /EndUsage/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /EndUsage/Create

        [HttpPost]
        public ActionResult Create(tbl_EndUsage tbl_endusage)
        {
            if (ModelState.IsValid)
            {
                db.tbl_EndUsage.AddObject(tbl_endusage);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_endusage);
        }

        //
        // GET: /EndUsage/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_EndUsage tbl_endusage = db.tbl_EndUsage.Single(t => t.EndUsage_Id == id);
            if (tbl_endusage == null)
            {
                return HttpNotFound();
            }
            return View(tbl_endusage);
        }

        //
        // POST: /EndUsage/Edit/5

        [HttpPost]
        public ActionResult Edit(tbl_EndUsage tbl_endusage)
        {
            if (ModelState.IsValid)
            {
                db.tbl_EndUsage.Attach(tbl_endusage);
                db.ObjectStateManager.ChangeObjectState(tbl_endusage, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_endusage);
        }

        //
        // GET: /EndUsage/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_EndUsage tbl_endusage = db.tbl_EndUsage.Single(t => t.EndUsage_Id == id);
            if (tbl_endusage == null)
            {
                return HttpNotFound();
            }
            return View(tbl_endusage);
        }

        //
        // POST: /EndUsage/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_EndUsage tbl_endusage = db.tbl_EndUsage.Single(t => t.EndUsage_Id == id);
            db.tbl_EndUsage.DeleteObject(tbl_endusage);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}