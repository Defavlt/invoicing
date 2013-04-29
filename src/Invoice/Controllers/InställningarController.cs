using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Invoice.Models;
using Invoice.Models.Dao;

namespace Invoice.Controllers
{
    public class InställningarController : Controller
    {
        private ProjektarbeteEntities db = new ProjektarbeteEntities( );

        public InställningarController( )
        {
            this.db.Configuration.ValidateOnSaveEnabled = false;
        }

        //
        // GET: /Företag/Edit

        public ActionResult Index( )
        {
            return View(this.db.Företaget);
        }

        //
        // POST: /Företag/Edit

        [HttpPost]
        public ActionResult Index(Inställningar company)
        {
            if (ModelState.IsValid)
            {
                this.db.Företaget = company;
                var validation = this.db.Entry<Inställningar>(company).GetValidationResult( );

                if (validation.IsValid)
                {
                    this.db.SaveChanges( );
                    return RedirectToAction("Index");
                }
                else
                {
                    foreach (var item in validation.ValidationErrors)
                    {
                        this.ModelState.AddModelError(item.PropertyName, item.ErrorMessage);
                    }

                    return View(company);
                }
            }

            return View(company);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}