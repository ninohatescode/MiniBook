//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MiniBook.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class NXB
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NXB()
        {
            this.SACHes = new HashSet<SACH>();
        }
    
        public int IDNXB { get; set; }
        public string SDT { get; set; }
        public string Mail { get; set; }
        public string DiaChi { get; set; }
        public string TenNXB { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SACH> SACHes { get; set; }
    }
}
