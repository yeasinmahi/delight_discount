//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DelightDiscount
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_UserAccount
    {
        public long Id { get; set; }
        public string UserId { get; set; }
        public string CID { get; set; }
        public Nullable<System.DateTime> DatDate { get; set; }
        public Nullable<int> TranType { get; set; }
        public string TranCID { get; set; }
        public Nullable<double> Amount { get; set; }
        public string DebitCredit { get; set; }
    }
}
