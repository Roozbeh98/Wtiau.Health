﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HealthEntities : DbContext
    {
        public HealthEntities()
            : base("name=HealthEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Tbl_Branch> Tbl_Branch { get; set; }
        public virtual DbSet<Tbl_Code> Tbl_Code { get; set; }
        public virtual DbSet<Tbl_CodeGroup> Tbl_CodeGroup { get; set; }
        public virtual DbSet<Tbl_College> Tbl_College { get; set; }
        public virtual DbSet<Tbl_Course> Tbl_Course { get; set; }
        public virtual DbSet<Tbl_Form> Tbl_Form { get; set; }
        public virtual DbSet<Tbl_FormAnswer> Tbl_FormAnswer { get; set; }
        public virtual DbSet<Tbl_FormAnswerResponse> Tbl_FormAnswerResponse { get; set; }
        public virtual DbSet<Tbl_FormStep> Tbl_FormStep { get; set; }
        public virtual DbSet<Tbl_Grad> Tbl_Grad { get; set; }
        public virtual DbSet<Tbl_Group> Tbl_Group { get; set; }
        public virtual DbSet<Tbl_Login> Tbl_Login { get; set; }
        public virtual DbSet<Tbl_Question> Tbl_Question { get; set; }
        public virtual DbSet<Tbl_Response> Tbl_Response { get; set; }
        public virtual DbSet<Tbl_Role> Tbl_Role { get; set; }
        public virtual DbSet<Tbl_Student> Tbl_Student { get; set; }
        public virtual DbSet<Tbl_StudentInfo> Tbl_StudentInfo { get; set; }
        public virtual DbSet<Tbl_TakeTurn> Tbl_TakeTurn { get; set; }
        public virtual DbSet<Tbl_Turn> Tbl_Turn { get; set; }
        public virtual DbSet<Tbl_TurnTimeSheet> Tbl_TurnTimeSheet { get; set; }
        public virtual DbSet<Tbl_University> Tbl_University { get; set; }
    }
}
