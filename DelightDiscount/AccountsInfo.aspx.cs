using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount
{
    public partial class AccountsInfo : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        private string treeCid;
        protected void Page_Load(object sender, EventArgs e)
        {
            tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
            if (userInfo==null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                
                string cid = userInfo.CID;
                treeCid = cid;
                cidLabel.InnerText = cid;
                nameLabel.InnerText = userInfo.FullName;
                if (cid!="")
                {
                    GetAllIncome(cid);
                    GetTreeData(treeCid);
                }
            }
        }

        protected void GetAllIncome( string cid)
        {
            var getAllIncome = (from z in db.tbl_UserAccount
                where z.CID == cid
                select new {z.DatDate, z.Amount, z.TranCID, z.TranType}).ToList();
            var spotIncome = getAllIncome.Where(x => x.TranType == 1).Select(x => x.Amount).Sum();
            var lvlIncome = getAllIncome.Where(x => x.TranType == 2).Select(x => x.Amount).Sum();
            var autoIncome = getAllIncome.Where(x => x.TranType == 3).Select(x => x.Amount).Sum();
            var rewardIncome = getAllIncome.Where(x => x.TranType == 4).Select(x => x.Amount).Sum();
            var transferIncome = getAllIncome.Where(x => x.TranType == 5).Select(x => x.Amount).Sum();
            spotIncomeLabel.InnerText = spotIncome.ToString();
            levelIncome.InnerText = lvlIncome.ToString();
            autoLabel.InnerText = autoIncome.ToString();
            rewardLabel.InnerText = rewardIncome.ToString();
            blanceTransferLabel.InnerText = transferIncome.ToString();
            totalIncomeLabel.InnerText = (spotIncome + lvlIncome + autoIncome + rewardIncome).ToString();
            currentBalanceLabel.InnerText = (spotIncome + lvlIncome + autoIncome + rewardIncome-transferIncome).ToString();
        }

        protected void GetTreeData( string cid)
        {
            var getAllRef = (from z in db.tbl_UserSpotTrack
                where z.CID == cid
                select z).ToList();
            //parentCid.InnerText = cid;
            parentCidButton.Text = cid;
            //var result = getAllRef.First(s => s.SlTrk == 1);
            var spot1 = getAllRef.First(x => x.SlTrk == 1);
            var spot2 = getAllRef.First(x => x.SlTrk == 2);
            var spot3 = getAllRef.First(x => x.SlTrk == 3);
            var spot4 = getAllRef.First(x => x.SlTrk == 4);
            var spot5 = getAllRef.First(x => x.SlTrk == 5);
            var spot6 = getAllRef.First(x => x.SlTrk == 6);
            var spot7 = getAllRef.First(x => x.SlTrk == 7);
            var spot8 = getAllRef.First(x => x.SlTrk == 8);
            var spot9 = getAllRef.First(x => x.SlTrk == 9);
            var spot10 = getAllRef.First(x => x.SlTrk == 10);
            child1cid.Text = spot1.UCID ?? "1-N/A";
            //child1cid.Text = spot1.UCID!= ? spot1.UCID : "N/A";

            child2cid.Text = spot2.UCID ?? "2-N/A";
            child3cid.Text = spot3.UCID ?? "3-N/A";
            child4cid.Text = spot4.UCID ?? "4-N/A";
            child5cid.Text = spot5.UCID ?? "5-N/A";
            child6cid.Text = spot6.UCID ?? "6-N/A";
            child7cid.Text = spot7.UCID ?? "7-N/A";
            child8cid.Text = spot8.UCID ?? "8-N/A";
            child9cid.Text = spot9.UCID ?? "9-N/A";
            child10cid.Text = spot10.UCID ?? "10-N/A";

        }

       

        protected void child1cid_Click(object sender, EventArgs e)
        {
            if (child1cid.Text.Length == 7)
            {
                string cid = child1cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child2cid_Click(object sender, EventArgs e)
        {
            if (child2cid.Text.Length == 7)
            {
                string cid = child2cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child3cid_Click(object sender, EventArgs e)
        {
            if (child3cid.Text.Length == 7)
            {
                string cid = child3cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child4cid_Click(object sender, EventArgs e)
        {
            if (child4cid.Text.Length == 7)
            {
                string cid = child4cid.Text;
                GetTreeData(cid);
            }
        }
        protected void child5cid_Click(object sender, EventArgs e)
        {
            if (child5cid.Text.Length == 7)
            {
                string cid = child5cid.Text;
                GetTreeData(cid);
            }

        }
        protected void child6cid_Click(object sender, EventArgs e)
        {
            if (child6cid.Text.Length == 7)
            {
                string cid = child6cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child7cid_Click(object sender, EventArgs e)
        {
            if (child7cid.Text.Length == 7)
            {
                string cid = child7cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child8cid_Click(object sender, EventArgs e)
        {
            if (child8cid.Text.Length == 7)
            {
                string cid = child8cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child9cid_Click(object sender, EventArgs e)
        {
            if (child9cid.Text.Length == 7)
            {
                string cid = child9cid.Text;
                GetTreeData(cid);
            }
        }

        protected void child10cid_Click(object sender, EventArgs e)
        {
            if (child10cid.Text.Length == 7)
            {
                string cid = child10cid.Text;
                GetTreeData(cid);
            }
        }

        protected void parentCidButton_Click(object sender, EventArgs e)
        {
            if (parentCidButton.Text.Length == 7)
            {
                var getCid = db.tbl_UserSpotTrack.FirstOrDefault(z => z.UCID == parentCidButton.Text);
                if (getCid!=null)
                {
                    GetTreeData(getCid.CID);
                }
            }
        }
    }
}