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
    public class UserController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /User/

        public ActionResult Index()
        {
            var tbl_userdetails = db.tbl_UserDetails.Include("tbl_CompanyType").Include("tbl_MRoles");
            return View(tbl_userdetails.ToList());
        }

        //
        // GET: /User/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_UserDetails tbl_userdetails = db.tbl_UserDetails.Single(t => t.UserId == id);
            if (tbl_userdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_userdetails);
        }

        //
        // GET: /User/Create

        public ActionResult Create()
        {
            ViewBag.CompanyType_Id = new SelectList(db.tbl_CompanyType, "CompanyType_Id", "Company_Type");
            ViewBag.RoleId = new SelectList(db.tbl_MRoles, "RoleId", "RoleName");
            return View();
        }

        //
        // POST: /User/Create

        [HttpPost]
        public ActionResult Create(tbl_UserDetails tbl_userdetails)
        {
            if (ModelState.IsValid)
            {
                db.tbl_UserDetails.AddObject(tbl_userdetails);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CompanyType_Id = new SelectList(db.tbl_CompanyType, "CompanyType_Id", "Company_Type", tbl_userdetails.CompanyType_Id);
            ViewBag.RoleId = new SelectList(db.tbl_MRoles, "RoleId", "RoleName", tbl_userdetails.RoleId);
            return View(tbl_userdetails);
        }

        //
        // GET: /User/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_UserDetails tbl_userdetails = db.tbl_UserDetails.Single(t => t.UserId == id);
            if (tbl_userdetails == null)
            {
                return HttpNotFound();
            }
            ViewBag.CompanyType_Id = new SelectList(db.tbl_CompanyType, "CompanyType_Id", "Company_Type", tbl_userdetails.CompanyType_Id);
            ViewBag.RoleId = new SelectList(db.tbl_MRoles, "RoleId", "RoleName", tbl_userdetails.RoleId);
            return View(tbl_userdetails);
        }

        //
        // POST: /User/Edit/5

        [HttpPost]
        public ActionResult Edit(tbl_UserDetails tbl_userdetails)
        {
            if (ModelState.IsValid)
            {
                db.tbl_UserDetails.Attach(tbl_userdetails);
                db.ObjectStateManager.ChangeObjectState(tbl_userdetails, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CompanyType_Id = new SelectList(db.tbl_CompanyType, "CompanyType_Id", "Company_Type", tbl_userdetails.CompanyType_Id);
            ViewBag.RoleId = new SelectList(db.tbl_MRoles, "RoleId", "RoleName", tbl_userdetails.RoleId);
            return View(tbl_userdetails);
        }

        //
        // GET: /User/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_UserDetails tbl_userdetails = db.tbl_UserDetails.Single(t => t.UserId == id);
            if (tbl_userdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_userdetails);
        }

        //
        // POST: /User/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_UserDetails tbl_userdetails = db.tbl_UserDetails.Single(t => t.UserId == id);
            db.tbl_UserDetails.DeleteObject(tbl_userdetails);
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