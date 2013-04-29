namespace Invoice.Models.Dao
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;

    public partial class Kund : Customer
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
        public override string Address
        {
            get
            {
                return base.Address;
            }
            set
            {
                base.Address = value;
            }
        }
        public override string ReferensPersoner
        {
            get
            {
                return base.ReferensPersoner;
            }
            set
            {
                base.ReferensPersoner = value;
            }
        }
    }
}