using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount
{
    public partial class BalanceTransfer : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
                LoadUserInfo();
                LoadGrid(userInfo.CID);
                passTextBox.Text = String.Empty;
                transferAmountTextBox.Text = String.Empty;
            }
        }
        protected void LoadUserInfo()
        {
            tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
            if (userInfo != null)
            {
                string cid = userInfo.CID;
                var getAllIncome = (from z in db.tbl_UserAccount
                                    where z.CID == cid
                                    select new { z.DatDate, z.Amount, z.TranCID, z.DebitCredit }).ToList();
                var creditIncome = getAllIncome.Where(x => x.DebitCredit == "Credit").Select(x => x.Amount).Sum();
                var debitIncome = getAllIncome.Where(x => x.DebitCredit == "Debit").Select(x => x.Amount).Sum();

                var totalAvailableBalance = creditIncome - debitIncome;
                activeBalanceTextBox.InnerText = totalAvailableBalance.ToString();
               
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
            if (transferAmountTextBox.Text.Trim()!="" && passTextBox.Text.Trim()!="")
            {
                var matchPass =
                    db.tbl_UserInfo.FirstOrDefault(z => z.Password == passTextBox.Text.Trim() && z.CID == userInfo.CID);
                if (matchPass!=null)
                {
                    //tranjection success.
                    tbl_BalanceTransferHistory transferHistory=new tbl_BalanceTransferHistory();
                    tbl_UserAccount userAccount=new tbl_UserAccount();

                    transferHistory.TransferId = GenarateUserId();
                    transferHistory.CID = userInfo.CID;
                    transferHistory.TransferDate = DateTime.Now.Date;
                    transferHistory.Amount = Convert.ToDouble(transferAmountTextBox.Text.Trim());
                    transferHistory.Status = "Pending";
                    userAccount.UserId = userInfo.AutoUserID;
                    userAccount.CID = userInfo.CID;
                    userAccount.DatDate = DateTime.Now.Date;
                    userAccount.TranType = 6;
                    userAccount.TranCID = "DD00001";
                    userAccount.Amount = Convert.ToDouble(transferAmountTextBox.Text);
                    userAccount.DebitCredit = "Debit";
                    db.tbl_BalanceTransferHistory.Add(transferHistory);
                    db.tbl_UserAccount.Add(userAccount);
                    db.SaveChanges();
                    balanceTransferLiteral.Text = transferAmountTextBox.Text+"<span style='color:#3C763D;background-color: #DFF0D8'> BDT Successfully debited from your account.";
                    transferAmountTextBox.Text = String.Empty;
                    passTextBox.Text = String.Empty;
                    LoadUserInfo();
                    LoadGrid(userInfo.CID);
                }
                else
                {
                    //Wrong password.
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Wrong password!')", true);
                }
            }
            else
            {
                //Amound and pass required
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Transfer Amount and password required!')", true);
            }
        }

        private void LoadGrid(string cid)
        {
            var getAll = (from z in db.tbl_BalanceTransferHistory
                where z.CID == cid
                orderby z.TransferDate descending 
                select new {z.TransferDate,z.Amount,z.Status}).ToList();
            transferHistoryGridView.DataSource = getAll;
            transferHistoryGridView.DataBind();
        }

        private string GenarateUserId()
        {
            tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
            tbl_AutoTransferId autoTransferId=new tbl_AutoTransferId();
            autoTransferId.UserId = userInfo.CID;
            db.tbl_AutoTransferId.Add(autoTransferId);
            db.SaveChanges();
            int year = DateTime.Now.Year;
            //txtmdmu.Text = branchInitial.VarBranchInitial;
            int seedNums = 1;
            char pads = '0';
            //string studentId = null;
            var getInvoId = from u in db.tbl_BalanceTransferHistory
                            where u.TransferId.Substring(3, 4) == year.ToString()
                            select new { u.TransferId};
            int result = (int) db.tbl_AutoTransferId.Where(x => x.UserId == userInfo.CID).Max(element => element.Id);
            
                seedNums = result;
                seedNums = seedNums + 1;
                return ("BT-" + DateTime.Now.Year + "-" + seedNums.ToString().PadLeft(6, pads));
           
            //return ("BT-" + DateTime.Now.Year + "-" + seedNums.ToString().PadLeft(6, pads));

        }
    }
}