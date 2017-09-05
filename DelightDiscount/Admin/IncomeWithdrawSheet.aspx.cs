using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.Admin
{
    public partial class IncomeWithdrawSheet : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            if (cidText.Value != "")
            {
                var getAll = (from z in db.tbl_UserAccount
                              join c in db.tbl_TransactionType on z.TranType equals c.Id
                              where z.CID == cidText.Value.Trim()
                              orderby z.DatDate
                              select new { z.CID, z.DatDate, c.TypeName, z.TranCID, z.Amount }).ToList();
                userAccountGridView.DataSource = getAll;
                userAccountGridView.DataBind();
            }

        }

        protected void oppositeCidButton_Click(object sender, EventArgs e)
        {
            if (cidText.Value != "")
            {
                var getAll = (from z in db.tbl_UserAccount
                              join c in db.tbl_TransactionType on z.TranType equals c.Id
                              where z.TranCID == cidText.Value.Trim()
                              orderby z.DatDate
                              select new { z.CID, z.DatDate, c.TypeName, z.TranCID, z.Amount }).ToList();
                userAccountGridView.DataSource = getAll;
                userAccountGridView.DataBind();
            }
        }
    }
}