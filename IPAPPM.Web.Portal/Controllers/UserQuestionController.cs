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

        public ActionResult Create()
        {
            ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name");
            return View();
        }

        //
        // POST: /UserQuestion/Create

        [HttpPost]
        public ActionResult Create(tbl_UserQuestions tbl_userquestions)
        {
            if (ModelState.IsValid)
            {
                db.tbl_UserQuestions.AddObject(tbl_userquestions);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UserId = new SelectList(db.tbl_UserDetails, "UserId", "Name", tbl_userquestions.UserId);
            return View(tbl_userquestions);
        }

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
        public ActionResult Edit(tbl_UserQuestions tbl_userquestions)
        {
            if (ModelState.IsValid)
            {
                db.tbl_UserQuestions.Attach(tbl_userquestions);
                db.ObjectStateManager.ChangeObjectState(tbl_userquestions, EntityState.Modified);
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
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_UserQuestions tbl_userquestions = db.tbl_UserQuestions.Single(t => t.Question_Id == id);
            db.tbl_UserQuestions.DeleteObject(tbl_userquestions);
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