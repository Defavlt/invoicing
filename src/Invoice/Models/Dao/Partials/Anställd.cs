namespace Invoice.Models.Dao
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;

    public partial class Anställd
    {
        public override string Namn
        {
            get
            {
                return base.Namn;
            }
            set
            {
                base.Namn = value;
            }
        }
        public override string Adress
        {
            get
            {
                return base.Adress;
            }
            set
            {
                base.Adress = value;
            }
        }
        public override long Konto
        {
            get
            {
                return base.Konto;
            }
            set
            {
                base.Konto = value;
            }
        }
    }
}