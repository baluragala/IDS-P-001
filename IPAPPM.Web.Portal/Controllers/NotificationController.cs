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
    public class NotificationController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /Notification/

        public ActionResult Index(int? page)
        {
            int pageSize = 12;
            int pageNumber = (page ?? 1);
            return View(db.tbl_Notifications.OrderByDescending(n=>n.CreatedDate).ToPagedList(pageNumber,pageSize));
        }

        //
        // GET: /Notification/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_Notifications tbl_notifications = db.tbl_Notifications.Single(t => t.Notification_Id == id);
            if (tbl_notifications == null)
            {
                return HttpNotFound();
            }
            return View(tbl_notifications);
        }

        //
        // GET: /Notification/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Notification/Create

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(tbl_Notifications tbl_notifications)
        {
            if (tbl_notifications==null)
            {
                ModelState.AddModelError("", "Please enter notification message");
                return View(tbl_notifications);
            }

            if (ModelState.IsValid)
            {
                tbl_notifications.CreatedBy = User.Identity.Name;
                tbl_notifications.CreatedDate = DateTime.Now;
                tbl_notifications.IsActive = true;
                db.tbl_Notifications.AddObject(tbl_notifications);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "CREATE",
                    ActionItem = "Notification",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tbl_notifications);
        }

        //
        // GET: /Notification/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_Notifications tbl_notifications = db.tbl_Notifications.Single(t => t.Notification_Id == id);
            if (tbl_notifications == null)
            {
                return HttpNotFound();
            }
            return View(tbl_notifications);
        }

        //
        // POST: /Notification/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_Notifications tbl_notifications)
        {
            if (ModelState.IsValid)
            {
                db.tbl_Notifications.Attach(tbl_notifications);
                db.ObjectStateManager.ChangeObjectState(tbl_notifications, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "Notification",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tbl_notifications);
        }

        //
        // GET: /Notification/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_Notifications tbl_notifications = db.tbl_Notifications.Single(t => t.Notification_Id == id);
            if (tbl_notifications == null)
            {
                return HttpNotFound();
            }
            return View(tbl_notifications);
        }

        //
        // POST: /Notification/Delete/5

        [HttpPost, ActionName("Delete")]
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_Notifications tbl_notifications = db.tbl_Notifications.Single(t => t.Notification_Id == id);
                db.tbl_Notifications.DeleteObject(tbl_notifications);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "DELETE",
                    ActionItem = "Notification",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return "Notification deleted Successfully.";
            }
            catch (Exception ex)
            {
                return "Notification Cannot deleted. May be due to existing references or violation";
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}