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
    
    public partial class Tbl_Course
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tbl_Course()
        {
            this.Tbl_Form = new HashSet<Tbl_Form>();
        }
    
        public int Course_ID { get; set; }
        public System.Guid Course_Guid { get; set; }
        public string Course_Years { get; set; }
        public string Course_Name { get; set; }
        public bool Course_IsDelete { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tbl_Form> Tbl_Form { get; set; }
    }
}
