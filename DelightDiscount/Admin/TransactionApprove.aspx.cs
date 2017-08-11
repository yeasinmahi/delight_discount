using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.Admin
{
    public partial class TransactionApprove : System.Web.UI.Page
    {
        DDDBEntities db=new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStatusDdl();
            }
        }

        public void LoadStatusDdl()
        {
            var getAll = (from z in db.tbl_BalanceTransferHistory
                select new {z.Status}).Distinct().ToList();
            statusDropDownList.DataSource = getAll;
            statusDropDownList.DataValueField = "Status";
            statusDropDownList.DataTextField = "Status";
            statusDropDownList.DataBind();
            statusDropDownList.Items.Insert(0, new ListItem("--Select--", "0"));
        }

        public void LoadAllTransaction(string status)
        {
            var getAll = (from z in db.tbl_BalanceTransferHistory
                where z.Status == status
                orderby z.TransferId descending
                select new {z.TransferId,z.TransferDate,z.CID,z.Amount}).ToList();

            transferApproveGridView.DataSource = getAll;
            transferApproveGridView.DataBind();
            if (status=="Approved")
            {
                this.transferApproveGridView.Columns[5].Visible = false;    
            }
            else
            {
                this.transferApproveGridView.Columns[5].Visible = true;
            }
            
        }

        protected void transferApproveGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            tbl_Operator oOperator = (tbl_Operator)Session["opAdmin"];
            if (e.CommandName == "ApproveButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvRow = transferApproveGridView.Rows[index];
                string transferId = ((Label)gvRow.Cells[1].FindControl("transferIdLabel")).Text;
                var checkId = db.tbl_BalanceTransferHistory.FirstOrDefault(z => z.TransferId == transferId);
                if (checkId!=null)
                {
                    checkId.Status = "Approved";
                    checkId.ApproveBy = oOperator.UserId;
                    checkId.ApproveDate = DateTime.Now.Date;
                    db.SaveChanges();
                    var btn = ((Button)gvRow.FindControl("btnApprove"));
                    btn.Visible = false;
                }
            }
        }

        protected void statusDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadAllTransaction(statusDropDownList.SelectedValue);
        }
    }
}