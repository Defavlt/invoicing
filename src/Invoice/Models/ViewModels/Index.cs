using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Invoice.Models.Dao;

namespace Invoice.Models.ViewModels
{
    public class Index
    {
        public IQueryable<Dagsrapport> RecentReports
        {
            get;
            set;
        }


    }
}