using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity.Infrastructure;
using System.Data;

namespace Invoice.Models.Dao
{
    public partial class ProjektarbeteEntities
    {
        public Inställningar Företaget
        {
            get
            {
                Inställningar company = this.Companies.FirstOrDefault( ) as Inställningar;

                if (company != default(Inställningar) && company != null)
                {
                    return company;
                }
                else
                {
                    return new Inställningar( );
                }
            }
            set
            {
                DbEntityEntry entry = base.Entry<Inställningar>(value);
                entry.State = EntityState.Modified;
            }
        }
    }
}