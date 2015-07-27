using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IPAPPM.Web.Portal.Models;
using System.Data.SqlClient;

namespace IPAPPM.Web.Portal.Controllers
{
    [Authorize]
    public class ProductCategoryController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /ProductCategory/

        public ActionResult Index()
        {
            return View(db.tbl_ProductCategory.ToList());
        }

        //
        // GET: /ProductCategory/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_ProductCategory tbl_productcategory = db.tbl_ProductCategory.Single(t => t.Category_Id == id);
            if (tbl_productcategory == null)
            {
                return HttpNotFound();
            }
            return View(tbl_productcategory);
        }

        //
        // GET: /ProductCategory/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /ProductCategory/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_ProductCategory tbl_productcategory,HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                tbl_productcategory.IsActive = true;
                tbl_productcategory.CreatedBy = User.Identity.Name;
                tbl_productcategory.CreatedDate = DateTime.Now;

                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/ProductCategory/")
                                                          + file.FileName);
                    tbl_productcategory.ImagePath = "Images/ProductCategory/" + file.FileName;
                }  

                db.tbl_ProductCategory.AddObject(tbl_productcategory);

                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "CREATE",
                    ActionItem = "ProductCategory",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });

                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_productcategory);
        }

        //
        // GET: /ProductCategory/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_ProductCategory tbl_productcategory = db.tbl_ProductCategory.Single(t => t.Category_Id == id);
            if (tbl_productcategory == null)
            {
                return HttpNotFound();
            }
            return View(tbl_productcategory);
        }

        //
        // POST: /ProductCategory/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_ProductCategory tbl_productcategory,HttpPostedFileBase file)
        {
            if (ModelState.IsValid)
            {
                tbl_productcategory.ModifiedBy = User.Identity.Name;
                tbl_productcategory.ModifiedDate = DateTime.Now;

                if (file != null)
                {
                    file.SaveAs(HttpContext.Server.MapPath("~/Images/ProductCategory/")
                                                          + file.FileName);
                    tbl_productcategory.ImagePath = "Images/ProductCategory/" + file.FileName;
                } 

                db.tbl_ProductCategory.Attach(tbl_productcategory);
                db.ObjectStateManager.ChangeObjectState(tbl_productcategory, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "ProductCategory",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_productcategory);
        }

        //
        // GET: /ProductCategory/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_ProductCategory tbl_productcategory = db.tbl_ProductCategory.Single(t => t.Category_Id == id);
            if (tbl_productcategory == null)
            {
                return HttpNotFound();
            }
            return View(tbl_productcategory);
        }

        //
        // POST: /ProductCategory/Delete/5

        [HttpPost, ActionName("Delete")]
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_ProductCategory tbl_productcategory = db.tbl_ProductCategory.Single(t => t.Category_Id == id);
                db.tbl_ProductCategory.DeleteObject(tbl_productcategory);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "DELETE",
                    ActionItem = "ProductCategory",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return "Product Category Successfully Deleted";
            }
            catch (Exception ex)
            {
                return "Product Category Cannot deleted. May be due to existing references or violation";
            }
            
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}