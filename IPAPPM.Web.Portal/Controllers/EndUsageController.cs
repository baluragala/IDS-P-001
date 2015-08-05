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
    public class EndUsageController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /EndUsage/

        public ActionResult Index(int? page)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(db.tbl_EndUsage.OrderBy(e=>e.EndUsage_Id).ToPagedList(pageNumber,pageSize));
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
            tbl_endusage.CreatedBy = User.Identity.Name;
            tbl_endusage.CreatedDate = DateTime.Now;

            if (ModelState.IsValid)
            {
                //check if record already exists
                //tbl_EndUsage entity = db.tbl_EndUsage.Where(e => e.EndUsage == tbl_endusage.EndUsage && e.SubEndUsage==tbl_endusage.SubEndUsage).SingleOrDefault();
                //if (entity != null)
                //{
                //    ModelState.AddModelError("","End Usage and Sub End Usage already exists");
                //}
                //else
                //{
                    db.tbl_EndUsage.AddObject(tbl_endusage);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                //}
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
            tbl_endusage.ModifiedBy = User.Identity.Name;
            tbl_endusage.ModifiedDate = DateTime.Now;
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
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_EndUsage tbl_endusage = db.tbl_EndUsage.Single(t => t.EndUsage_Id == id);
                db.tbl_EndUsage.DeleteObject(tbl_endusage);
                db.SaveChanges();
                return "End Usage deleted Successfully.";
            }
            catch (Exception ex)
            {
                return "End Usage Cannot deleted. May be due to existing references or violation";
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}