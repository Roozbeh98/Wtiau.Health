//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wtiau.Health.Web.Models.Domian
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tbl_TakeTurn
    {
        public int TT_ID { get; set; }
        public System.Guid TT_Guid { get; set; }
        public int TT_StudentID { get; set; }
        public int TT_TTSID { get; set; }
        public bool TT_IsPresent { get; set; }
        public bool TT_IsDelete { get; set; }
    
        public virtual Tbl_Student Tbl_Student { get; set; }
        public virtual Tbl_TurnTimeSheet Tbl_TurnTimeSheet { get; set; }
    }
}