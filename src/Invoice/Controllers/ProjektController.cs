using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Invoice.Models;
using Dao = Invoice.Models.Dao;
using Invoice.Models.Dao;

namespace Invoice.Controllers
{
    public class ProjektController : Controller
    {
        private ProjektarbeteEntities db = new ProjektarbeteEntities();

        //
        // GET: /Projekt/

        public ActionResult Index()
        {
            return View(db.Projects.ToList());
        }

        //
        // GET: /Projekt/Details/5

        public ActionResult Details(int id = 0)
        {
            Projekt project = db.Projects.Find(id) as Projekt;

            if (project == null)
            {
                return HttpNotFound();
            }
            return View(project);
        }

        //
        // GET: /Projekt/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Projekt/Create

        [HttpPost]
        public ActionResult Create(Projekt project)
        {
            if (ModelState.IsValid)
            {
                db.Projects.Add(project);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(project);
        }

        //
        // GET: /Projekt/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Projekt project = db.Projects.Find(id) as Projekt;
            if (project == null)
            {
                return HttpNotFound();
            }
            return View(project);
        }

        //
        // POST: /Projekt/Edit/5

        [HttpPost]
        public ActionResult Edit(Projekt project)
        {
            if (ModelState.IsValid)
            {
                db.Entry(project).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(project);
        }

        //
        // GET: /Projekt/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Projekt project = db.Projects.Find(id) as Projekt;
            if (project == null)
            {
                return HttpNotFound();
            }
            return View(project);
        }

        //
        // POST: /Projekt/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Projekt project = db.Projects.Find(id) as Projekt;
            db.Projects.Remove(project);
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