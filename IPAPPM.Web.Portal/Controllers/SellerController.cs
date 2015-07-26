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
    public class SellerController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /Seller/

        public ActionResult Index()
        {
            var tbl_sellerdetails = db.tbl_SellerDetails.Include("tbl_City").Include("tbl_SellerType").Include("tbl_State");
            return View(tbl_sellerdetails.ToList());
        }

        //
        // GET: /Seller/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_SellerDetails tbl_sellerdetails = db.tbl_SellerDetails.Single(t => t.Seller_Id == id);
            if (tbl_sellerdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_sellerdetails);
        }

        //
        // GET: /Seller/Create

        public ActionResult Create()
        {
            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name");
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type");
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name");
            ViewBag.ProductCategories = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name");
            return View();
        }

        //
        // POST: /Seller/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_SellerDetails tbl_sellerdetails)
        {
            if (ModelState.IsValid)
            {
                tbl_sellerdetails.CreatedBy = User.Identity.Name;
                tbl_sellerdetails.CreatedDate = DateTime.Now;
                tbl_sellerdetails.IsActive = true;                
                db.tbl_SellerDetails.AddObject(tbl_sellerdetails);                
                db.SaveChanges();          
                
                return RedirectToAction("Index");
            }

            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name", tbl_sellerdetails.City);
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type", tbl_sellerdetails.SellerType_Id);
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name", tbl_sellerdetails.State);
            return View(tbl_sellerdetails);
        }

        //
        // GET: /Seller/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_SellerDetails tbl_sellerdetails = db.tbl_SellerDetails.Single(t => t.Seller_Id == id);
            if (tbl_sellerdetails == null)
            {
                return HttpNotFound();
            }
            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name", tbl_sellerdetails.City);
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type", tbl_sellerdetails.SellerType_Id);
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name", tbl_sellerdetails.State);
            return View(tbl_sellerdetails);
        }

        //
        // POST: /Seller/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_SellerDetails tbl_sellerdetails)
        {
            tbl_sellerdetails.ModifiedBy = User.Identity.Name;
            tbl_sellerdetails.ModifiedDate = DateTime.Now;
            tbl_sellerdetails.CreatedBy = User.Identity.Name;

            if (ModelState.IsValid)
            {
                //tbl_sellerdetails.ModifiedBy = User.Identity.Name;
                //tbl_sellerdetails.ModifiedDate = DateTime.Now;
                //tbl_sellerdetails.CreatedBy = User.Identity.Name;

                db.tbl_SellerDetails.Attach(tbl_sellerdetails);
                db.ObjectStateManager.ChangeObjectState(tbl_sellerdetails, EntityState.Modified);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name", tbl_sellerdetails.City);
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type", tbl_sellerdetails.SellerType_Id);
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name", tbl_sellerdetails.State);
            return View(tbl_sellerdetails);
        }

        //
        // GET: /Seller/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_SellerDetails tbl_sellerdetails = db.tbl_SellerDetails.Single(t => t.Seller_Id == id);
            if (tbl_sellerdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_sellerdetails);
        }

        //
        // POST: /Seller/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_SellerDetails tbl_sellerdetails = db.tbl_SellerDetails.Single(t => t.Seller_Id == id);
            db.tbl_SellerDetails.DeleteObject(tbl_sellerdetails);
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