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
    [Authorize]
    public class CommonTermsController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /CommonTerms/

        public ActionResult Index(int id)
        {
            /*
             * Term Type
             * 1 - Paper
             * 2 - Priniting
             * 3 - Common Priting Problem
             * 4 - Common Photo copier Problem
             */
            int termType = id;
            if (termType == 1)
                return View(db.tbl_CommonTerms.Where(t => t.TermType==1).ToList());
            if (termType == 2)
                return View(db.tbl_CommonTerms.Where(t => t.TermType==2).ToList());
            if (termType == 3)
                return View(db.tbl_CommonTerms.Where(t => t.TermType==3).ToList());
            if (termType == 4)
                return View(db.tbl_CommonTerms.Where(t => t.TermType==4).ToList());
            return HttpNotFound("No such term type defined");
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

        public ActionResult Create(int id)
        {
            return View();
        }

        //
        // POST: /CommonTerms/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_CommonTerms tbl_commonterms, int id)
        {
            tbl_commonterms.TermType = id;
            tbl_commonterms.CreatedBy = User.Identity.Name;
            tbl_commonterms.CreatedDate = DateTime.Now;

            if (ModelState.IsValid)
            {
                db.tbl_CommonTerms.AddObject(tbl_commonterms);
                switch (id)
                {
                    case 1:
                    db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                    {
                        Action = "CREATE",
                        ActionItem = "Common Paper Term",
                        UserName = User.Identity.Name,
                        ActionDate = DateTime.Now
                    });
                    break;

                    case 2:
                    db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                    {
                        Action = "CREATE",
                        ActionItem = "Common Priting Term",
                        UserName = User.Identity.Name,
                        ActionDate = DateTime.Now
                    });
                    break;

                    case 3:
                    db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                    {
                        Action = "CREATE",
                        ActionItem = "Common Printing Problem",
                        UserName = User.Identity.Name,
                        ActionDate = DateTime.Now
                    });
                    break;

                    case 4:
                    db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                    {
                        Action = "CREATE",
                        ActionItem = "Common Photocopier Problem",
                        UserName = User.Identity.Name,
                        ActionDate = DateTime.Now
                    });
                    break;

                }
                
                db.SaveChanges();
                return RedirectToAction("Index/"+id);
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
        [ValidateInput(false)]
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