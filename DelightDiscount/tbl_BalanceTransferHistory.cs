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
    
    public partial class tbl_BalanceTransferHistory
    {
        public long Id { get; set; }
        public string TransferId { get; set; }
        public string CID { get; set; }
        public Nullable<System.DateTime> TransferDate { get; set; }
        public Nullable<double> Amount { get; set; }
        public string Status { get; set; }
        public string ApproveBy { get; set; }
        public Nullable<System.DateTime> ApproveDate { get; set; }
    }
}
