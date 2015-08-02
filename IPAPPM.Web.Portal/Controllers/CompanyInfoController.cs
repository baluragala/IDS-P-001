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
    public class CompanyInfoController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /CompanyInfo/

        public ActionResult Index()
        {
            tbl_CompanyInfo model = db.tbl_CompanyInfo.ToList().Count > 0 ? db.tbl_CompanyInfo.Single() : new tbl_CompanyInfo();           
            return View(model);
        }

        //
        // GET: /CompanyInfo/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_CompanyInfo tbl_companyinfo = db.tbl_CompanyInfo.Single(t => t.Company_Id == id);
            if (tbl_companyinfo == null)
            {
                return HttpNotFound();
            }
            return View(tbl_companyinfo);
        }

        //
        // GET: /CompanyInfo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /CompanyInfo/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_CompanyInfo tbl_companyinfo,HttpPostedFileBase file)
        {
           
            tbl_companyinfo.CreatedBy = User.Identity.Name;
            tbl_companyinfo.CreatedDate = DateTime.Now;
            tbl_companyinfo.ModifiedBy = User.Identity.Name;
            tbl_companyinfo.ModifiedDate = DateTime.Now;
            tbl_companyinfo.IsActive = true;
            tbl_companyinfo.ImagePath="";

            if (ModelState.IsValid)
            {
                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/")
                                                          + file.FileName);
                    tbl_companyinfo.ImagePath = "Images/" + file.FileName;
                }  
                db.tbl_CompanyInfo.AddObject(tbl_companyinfo);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "CREATE",
                    ActionItem = "CompanyInfo",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_companyinfo);
        }

        //
        // GET: /CompanyInfo/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_CompanyInfo tbl_companyinfo = db.tbl_CompanyInfo.Single(t => t.Company_Id == id);
            if (tbl_companyinfo == null)
            {
                return HttpNotFound();
            }
            return View(tbl_companyinfo);
        }

        //
        // POST: /CompanyInfo/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_CompanyInfo tbl_companyinfo, HttpPostedFileBase file)
        {
            tbl_companyinfo.ModifiedBy = User.Identity.Name;
            tbl_companyinfo.ModifiedDate = DateTime.Now;

            if (ModelState.IsValid)
            {
                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/")
                                                          + file.FileName);
                    tbl_companyinfo.ImagePath = "Images/" + file.FileName;
                } 
                db.tbl_CompanyInfo.Attach(tbl_companyinfo);
                db.ObjectStateManager.ChangeObjectState(tbl_companyinfo, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "CompanyInfo",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_companyinfo);
        }

        //
        // GET: /CompanyInfo/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_CompanyInfo tbl_companyinfo = db.tbl_CompanyInfo.Single(t => t.Company_Id == id);
            if (tbl_companyinfo == null)
            {
                return HttpNotFound();
            }
            return View(tbl_companyinfo);
        }

        //
        // POST: /CompanyInfo/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_CompanyInfo tbl_companyinfo = db.tbl_CompanyInfo.Single(t => t.Company_Id == id);
            db.tbl_CompanyInfo.DeleteObject(tbl_companyinfo);
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