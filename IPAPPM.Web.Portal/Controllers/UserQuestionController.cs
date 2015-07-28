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
    public class UserQuestionController : Controller
    {
        private IPAPPMLIVEEntities db = new IPAPPMLIVEEntities();

        //
        // GET: /UserQuestion/

        public ActionResult Index()
        {
            var tbl_userquestions = db.tbl_UserQuestions.Include("tbl_UserDetails");
            return View(tbl_userquestions.ToList());
        }

        //
        // GET: /UserQuestion/Details/5

        public ActionResult Details(int id = 0)
        {
            tbl_UserQuestions tbl_userquestions = db.tbl_UserQuestions.Single(t => t.Question_Id == id);
            if (tbl_userquestions == null)
            {
                return HttpNotFound();
            }
            return View(tbl_userquestions);
        }

        //
        // GET: /UserQuestion/Create

        //public ActionResult Create()
        //{
        //    ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name");
        //    return View();
        //}

        //
        // POST: /UserQuestion/Create

        //[HttpPost]
        //[ValidateInput(false)]
        //public ActionResult Create(tbl_UserQuestions tbl_userquestions)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.tbl_UserQuestions.AddObject(tbl_userquestions);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name", tbl_userquestions.UserId);
        //    return View(tbl_userquestions);
        //}

        //
        // GET: /UserQuestion/Edit/5

        public ActionResult Edit(int id = 0)
        {
            tbl_UserQuestions tbl_userquestions = db.tbl_UserQuestions.Single(t => t.Question_Id == id);
            if (tbl_userquestions == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name", tbl_userquestions.UserId);
            return View(tbl_userquestions);
        }

        //
        // POST: /UserQuestion/Edit/5

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(tbl_UserQuestions tbl_userquestions)
        {
            tbl_userquestions.ModifiedBy = User.Identity.Name;
            tbl_userquestions.ModifiedDate = DateTime.Now;
            if (ModelState.IsValid)
            {
                
                db.tbl_UserQuestions.Attach(tbl_userquestions);
                db.ObjectStateManager.ChangeObjectState(tbl_userquestions, EntityState.Modified);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "UPDATE",
                    ActionItem = "UserQuestion",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name", tbl_userquestions.UserId);
            return View(tbl_userquestions);
        }

        //
        // GET: /UserQuestion/Delete/5

        public ActionResult Delete(int id = 0)
        {
            tbl_UserQuestions tbl_userquestions = db.tbl_UserQuestions.Single(t => t.Question_Id == id);
            if (tbl_userquestions == null)
            {
                return HttpNotFound();
            }
            return View(tbl_userquestions);
        }

        //
        // POST: /UserQuestion/Delete/5

        [HttpPost, ActionName("Delete")]
        public String DeleteConfirmed(int id)
        {
            try
            {
                tbl_UserQuestions tbl_userquestions = db.tbl_UserQuestions.Single(t => t.Question_Id == id);
                db.tbl_UserQuestions.DeleteObject(tbl_userquestions);
                //Audit 
                db.tbl_AuditTrail.AddObject(new tbl_AuditTrail
                {
                    Action = "DELETE",
                    ActionItem = "UserQuestion",
                    UserName = User.Identity.Name,
                    ActionDate = DateTime.Now
                });
                db.SaveChanges();
                return "User Question deleted Successfully.";
            }
            catch (Exception ex)
            {
                return "User Question Cannot deleted. May be due to existing references or violation";
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}