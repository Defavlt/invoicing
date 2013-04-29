using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Invoice.Models.Dao;

namespace Invoice.Models.ViewModels
{
    public class CreateCustomer : Inställningar
    {
        public IEnumerable<Inställningar> ExistingCompanies
        {
            get;
            set;
        }

        public string SelectFöretag
        {
            get;
            set;
        }
    }
}