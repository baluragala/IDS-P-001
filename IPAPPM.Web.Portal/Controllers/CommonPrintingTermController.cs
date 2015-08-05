using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.Models;
using PagedList;

namespace IPAPPM.Web.Portal.Controllers
{
    [Authorize]
    public class CommonPrintingTermController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /CommonPaperTerms/

        public ActionResult Index(int? page)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(db.tbl_CommonTerms.Where(c => c.TermType == 2).OrderBy(t => t.Title).ToPagedList(pageNumber, pageSize));
        }

        //
        // GET: /CommonPaperTerms/Details/5

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
        // GET: /CommonPaperTerms/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /CommonPaperTerms/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_CommonTerms tbl_commonterms)
        {
            tbl_commonterms.CreatedBy = User.Identity.Name;
            tbl_commonterms.CreatedDate = DateTime.Now;
            tbl_commonterms.TermType = 2;
            if (ModelState.IsValid)
            {
                db.tbl_CommonTerms.AddObject(tbl_commonterms);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "CREATE",
                    ActionItem = "Common Printing Term",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_commonterms);
        }

        //
        // GET: /CommonPaperTerms/Edit/5

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
        // POST: /CommonPaperTerms/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_CommonTerms tbl_commonterms)
        {
            tbl_commonterms.ModifiedBy = User.Identity.Name;
            tbl_commonterms.ModifiedDate = DateTime.Now;

            if (ModelState.IsValid)
            {
                db.tbl_CommonTerms.Attach(tbl_commonterms);
                db.ObjectStateManager.ChangeObjectState(tbl_commonterms, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "Common Printing Term",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_commonterms);
        }

        //
        // GET: /CommonPaperTerms/Delete/5

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
        // POST: /CommonPaperTerms/Delete/5

        [HttpPost, ActionName("Delete")]
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_CommonTerms tbl_commonterms = db.tbl_CommonTerms.Single(t => t.CtTerms_Id == id);
                db.tbl_CommonTerms.DeleteObject(tbl_commonterms);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "DELETE",
                    ActionItem = "Common Printing Term",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return "Common printing Term deleted successfully";
            }
            catch (Exception ex)
            {
                return "Common printing Term Cannot deleted. May be due to existing references or violation";
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}