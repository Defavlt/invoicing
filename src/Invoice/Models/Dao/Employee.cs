//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Invoice.Models.Dao
{
    using System;
	using System.ComponentModel.DataAnnotations;
    using System.Collections.Generic;
    
    public abstract partial class Employee
    {
        public Employee()
        {
            this.Dailyreports = new HashSet<Dailyreport>();
        }
    
        [Display(Name="Id")]                     public virtual int        Id                   { get; set; }
        [Display(Name="Namn")]                   public virtual string     Namn                 { get; set; }
        [Display(Name="Adress")]                 public virtual string     Adress               { get; set; }
        [Display(Name="Telefon")][DataType(DataType.PhoneNumber)] public virtual int        Telefon              { get; set; }
        [Display(Name="Konto")]                  public virtual long       Konto                { get; set; }
    
          public virtual ICollection<Dailyreport> Dailyreports { get; set; }
    }
}
