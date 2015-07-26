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
    public class CommonTermsController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /CommonTerms/

        public ActionResult Index()
        {
            return View(db.tbl_CommonTerms.ToList());
        }

        //
        // GET: /CommonTerms/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_CommonTerms tbl_commonterms = db.tbl_CommonTerms.Single(t => t.CtTerms_Id == id);
            if (tbl_commonterms == null)
            {
                return HttpNotFound();
            }
            return View(tbl_commonterms);
        }

        //
        // GET: /CommonTerms/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /CommonTerms/Create

        [HttpPost]
        public ActionResult Create(tbl_CommonTerms tbl_commonterms)
        {
            if (ModelState.IsValid)
            {
                db.tbl_CommonTerms.AddObject(tbl_commonterms);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_commonterms);
        }

        //
        // GET: /CommonTerms/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_CommonTerms tbl_commonterms = db.tbl_CommonTerms.Single(t => t.CtTerms_Id == id);
            if (tbl_commonterms == null)
            {
                return HttpNotFound();
            }
            return View(tbl_commonterms);
        }

        //
        // POST: /CommonTerms/Edit/5

        [HttpPost]
        public ActionResult Edit(tbl_CommonTerms tbl_commonterms)
        {
            if (ModelState.IsValid)
            {
                db.tbl_CommonTerms.Attach(tbl_commonterms);
                db.ObjectStateManager.ChangeObjectState(tbl_commonterms, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_commonterms);
        }

        //
        // GET: /CommonTerms/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_CommonTerms tbl_commonterms = db.tbl_CommonTerms.Single(t => t.CtTerms_Id == id);
            if (tbl_commonterms == null)
            {
                return HttpNotFound();
            }
            return View(tbl_commonterms);
        }

        //
        // POST: /CommonTerms/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_CommonTerms tbl_commonterms = db.tbl_CommonTerms.Single(t => t.CtTerms_Id == id);
            db.tbl_CommonTerms.DeleteObject(tbl_commonterms);
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