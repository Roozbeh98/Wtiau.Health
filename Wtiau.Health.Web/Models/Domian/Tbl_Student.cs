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
    
    public partial class Tbl_Student
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Student()
        {
            this.Tbl_TakeTurn = new HashSet<Tbl_TakeTurn>();
        }
    
        public int Student_ID { get; set; }
        public System.Guid Student_Guid { get; set; }
        public Nullable<int> Student_SIID { get; set; }
        public string Student_Code { get; set; }
        public string Student_NationalCode { get; set; }
        public bool Student_Form1 { get; set; }
        public bool Student_Form2 { get; set; }
        public bool Student_TakeTurn { get; set; }
        public bool Student_Info { get; set; }
        public bool Student_IsDelete { get; set; }
    
        public virtual Tbl_StudentInfo Tbl_StudentInfo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_TakeTurn> Tbl_TakeTurn { get; set; }
    }
}
