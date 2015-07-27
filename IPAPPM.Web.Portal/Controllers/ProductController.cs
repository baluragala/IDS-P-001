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
    public class ProductController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /Product/

        public ActionResult Index()
        {
            var tbl_productdetails = db.tbl_ProductDetails.Include("tbl_ProductCategory");
            return View(tbl_productdetails.ToList());
        }

        //
        // GET: /Product/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_ProductDetails tbl_productdetails = db.tbl_ProductDetails.Single(t => t.Product_Id == id);
            if (tbl_productdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_productdetails);
        }

        //
        // GET: /Product/Create

        public ActionResult Create()
        {
            ViewBag.Category_Id = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name");
            return View();
        }

        //
        // POST: /Product/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_ProductDetails tbl_productdetails, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                tbl_productdetails.CreatedBy = User.Identity.Name;
                tbl_productdetails.CreatedDate = DateTime.Now;
                tbl_productdetails.ModifiedBy = User.Identity.Name;
                tbl_productdetails.ModifiedDate = DateTime.Now;
                tbl_productdetails.ImageModifiedDate = DateTime.Now;
                tbl_productdetails.IsActive = true;

                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/Product/")
                                                          + file.FileName);
                    tbl_productdetails.ImagePath = "Images/Product/" + file.FileName;
                }  
                db.tbl_ProductDetails.AddObject(tbl_productdetails);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail { 
                    Action="CREATE",
                    ActionItem="Product",
                    UserName = User.Identity.Name,
                    ActionDate=DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Category_Id = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name", tbl_productdetails.Category_Id);
            return View(tbl_productdetails);
        }

        //
        // GET: /Product/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_ProductDetails tbl_productdetails = db.tbl_ProductDetails.Single(t => t.Product_Id == id);
            if (tbl_productdetails == null)
            {
                return HttpNotFound();
            }
            ViewBag.Category_Id = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name", tbl_productdetails.Category_Id);
            return View(tbl_productdetails);
        }

        //
        // POST: /Product/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_ProductDetails tbl_productdetails, HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
               
                tbl_productdetails.ModifiedBy = User.Identity.Name;
                tbl_productdetails.ModifiedDate = DateTime.Now;
                tbl_productdetails.ImageModifiedDate = DateTime.Now;

                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/Product")
                                                          + file.FileName);
                    tbl_productdetails.ImagePath = "Images/Product/" + file.FileName;
                }  
                db.tbl_ProductDetails.Attach(tbl_productdetails);
                db.ObjectStateManager.ChangeObjectState(tbl_productdetails, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "Product",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Category_Id = new SelectList(db.tbl_ProductCategory, "Category_Id", "Category_Name", tbl_productdetails.Category_Id);
            return View(tbl_productdetails);
        }

        //
        // GET: /Product/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_ProductDetails tbl_productdetails = db.tbl_ProductDetails.Single(t => t.Product_Id == id);
            if (tbl_productdetails == null)
            {
                return HttpNotFound();
            }
            return View(tbl_productdetails);
        }

        //
        // POST: /Product/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_ProductDetails tbl_productdetails = db.tbl_ProductDetails.Single(t => t.Product_Id == id);
            db.tbl_ProductDetails.DeleteObject(tbl_productdetails);
            //Audit 
            db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
            {
                Action = "DELETE",
                ActionItem = "Product",
                UserName = User.Identity.Name,
                ActionDate = DateTime.Now
            });
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