//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HsmBI
{
    using System;
    using System.Collections.Generic;
    
    public partial class Dues
    {
        public Dues()
        {
            this.Transactions = new HashSet<Transactions>();
        }
    
        public int DueId { get; set; }
        public string Description { get; set; }
        public bool IsMonthly { get; set; }
    
        public virtual ICollection<Transactions> Transactions { get; set; }
    }
}