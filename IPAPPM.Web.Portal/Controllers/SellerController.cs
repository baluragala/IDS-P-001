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
    public class SellerController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /Seller/

        public ActionResult Index()
        {
            var tbl_sellerdetails = db.tbl_SellerDetails
                                       .Include("tbl_City")
                                       .Include("tbl_SellerType")
                                       .Include("tbl_State")
                                       .Include("tbl_ProductCategory");
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
                foreach (var categoryId in Request.Form["ProductCategories"].Split(','))
                {
                    int cid = Convert.ToInt32(categoryId);
                    tbl_ProductCategory entity = (from c in db.tbl_ProductCategory
                                                  where c.Category_Id == cid
                                                  select c
                                                      ).First();
                    tbl_sellerdetails.tbl_ProductCategory.Add(entity);
                }

                db.tbl_SellerDetails.AddObject(tbl_sellerdetails);

                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "CREATE",
                    ActionItem = "Seller",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });

                db.SaveChanges();

                return RedirectToAction("Index");
            }

            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name", tbl_sellerdetails.City);
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type", tbl_sellerdetails.SellerType_Id);
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name", tbl_sellerdetails.State);
            ViewBag.ProductCategories = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name");
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
            ViewBag.ProductCategories = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name");
            ViewBag.SelectedProductCategories = tbl_sellerdetails.tbl_ProductCategory.Select(t => t.Category_Id).ToArray();
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
                String sql  = String.Format("DELETE FROM [tbl_SellerProductCategories] WHERE Seller_Id={0}",tbl_sellerdetails.Seller_Id);
                db.ExecuteStoreCommand(sql);
                if (Request.Form["ProductCategories"] != null)
                {
                    foreach (var categoryId in Request.Form["ProductCategories"].Split(','))
                    {
                        int cid = Convert.ToInt32(categoryId);
                        tbl_ProductCategory entity = (from c in db.tbl_ProductCategory
                                                      where c.Category_Id == cid
                                                      select c
                                                              ).First();
                        tbl_sellerdetails.tbl_ProductCategory.Add(entity);
                    }
                }
                
                if( tbl_sellerdetails.EntityState ==  System.Data.EntityState.Detached)
                    db.tbl_SellerDetails.Attach(tbl_sellerdetails);

                db.ObjectStateManager.ChangeObjectState(tbl_sellerdetails, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "EDIT",
                    ActionItem = "Seller",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.City = new SelectList(db.tbl_City, "City_Id", "City_Name", tbl_sellerdetails.City);
            ViewBag.SellerType_Id = new SelectList(db.tbl_SellerType, "SellerType_Id", "Seller_Type", tbl_sellerdetails.SellerType_Id);
            ViewBag.State = new SelectList(db.tbl_State, "State_Id", "State_Name", tbl_sellerdetails.State);
            ViewBag.ProductCategories = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name");
            ViewBag.SelectedProductCategories = tbl_sellerdetails.tbl_ProductCategory.Select(t => t.Category_Id).ToArray();
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
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_SellerDetails tbl_sellerdetails = db.tbl_SellerDetails.Single(t => t.Seller_Id == id);
                db.tbl_SellerDetails.DeleteObject(tbl_sellerdetails);

                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "DELETE",
                    ActionItem = "Seller",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });

                db.SaveChanges();
                return "Seller deleted Successfully.";
            }
            catch (Exception ex)
            {
                return "Seller Cannot deleted. May be due to existing references or violation";
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}