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
    
    public partial class Attendance
    {
        public int EventId { get; set; }
        public int MemberId { get; set; }
        public System.TimeSpan TimeIn { get; set; }
    
        public virtual Events Events { get; set; }
        public virtual Members Members { get; set; }
    }
}
