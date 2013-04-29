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
        public override string Anst�lld
        {
            get
            {
                return base.Anst�lld;
            }
            set
            {
                base.Anst�lld = value;
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