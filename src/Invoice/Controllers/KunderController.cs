using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Invoice.Models.Dao;

namespace Invoice.Controllers
{
    public class KunderController : ControllerBase
    {
        ProjektarbeteEntities db = new ProjektarbeteEntities( );

        //
        // GET: /Kunder/

        public ActionResult Index()
        {
            var kunder =
                from kund in this.db.Customers
                select kund as Kund;

            return View(kunder);
        }

        //
        // GET: /Kunder/Details/5

        public ActionResult Detaljer(int id) //Detaljer inte Details
        {
            Kund kund = this.db.Customers.Find(id) as Kund;

            return View(kund);
        }

        //
        // GET: /Kunder/Create

        public ActionResult Skapa() //Skapa inte Create
        {
            return View();
        }

        //
        // POST: /Kunder/Create

        [HttpPost]
        public ActionResult Skapa( Kund kund )
        {
            Customer customer = this.db.Customers.Find(kund.Id);

            if (this.ModelState.IsValid && customer == null)
            {
                this.db.Customers.Add(kund as Customer);
                this.db.SaveChanges( );

                return RedirectToAction("Index");
            }
            else
            {
                return this.Ändra(kund.Id, kund);
            }
        }

        //
        // POST: /Kunder/Edit/5

        [HttpPost]
        public ActionResult Ändra(int id, Kund kund)
        {
            if (this.ModelState.IsValid && this.db.Customers.Find(id) != null)
            {
                this.db.Entry(kund)
                    .State = System.Data.EntityState.Modified;

                this.db.SaveChanges( );

                return this.RedirectToAction(this.Index);
            }
            else
            {
                return View( );
            }
        }

        //
        // POST: /Kunder/Delete/5

        [HttpPost]
        public ActionResult Radera(int id)
        {
            Customer kund = this.db.Customers.Find(id);

            if (this.ModelState.IsValid && kund != null)
            {
                this.db.Customers.Remove(kund);
                this.db.SaveChanges( );   
            }

            return RedirectToAction("Index");
        }
    }
}
