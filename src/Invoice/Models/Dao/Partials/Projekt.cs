namespace Invoice.Models.Dao
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;

    public partial class Projekt
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
        public override DateTime StartDatum
        {
            get
            {
                return base.StartDatum;
            }
            set
            {
                base.StartDatum = value;
            }
        }
        public override DateTime SlutDatum
        {
            get
            {
                return base.SlutDatum;
            }
            set
            {
                base.SlutDatum = value;
            }
        }
        public override string Beskrivning
        {
            get
            {
                return base.Beskrivning;
            }
            set
            {
                base.Beskrivning = value;
            }
        }

    }
}