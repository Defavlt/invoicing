namespace Invoice.Models.Dao
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;

    public partial class Dagsrapport
    {
        public override DateTime Datum
        {
            get
            {
                return base.Datum;
            }
            set
            {
                base.Datum = value;
            }
        }
        public override string Kund
        {
            get
            {
                return base.Kund;
            }
            set
            {
                base.Kund = value;
            }
        }
        public override string Projekt
        {
            get
            {
                return base.Projekt;
            }
            set
            {
                base.Projekt = value;
            }
        }
        public override string Anställd
        {
            get
            {
                return base.Anställd;
            }
            set
            {
                base.Anställd = value;
            }
        }
        public override TimeSpan StartTid
        {
            get
            {
                return base.StartTid;
            }
            set
            {
                base.StartTid = value;
            }
        }
        public override TimeSpan SlutTid
        {
            get
            {
                return base.SlutTid;
            }
            set
            {
                base.SlutTid = value;
            }
        }
    }
}