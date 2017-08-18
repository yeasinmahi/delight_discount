using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast.Selectors;

namespace DelightDiscount.Admin
{
    public partial class LevelWiseList : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLevel();
            }
        }

        public void LoadLevel()
        {
            var getAll = (from z in db.tbl_LevelCount
                          orderby z.LevelStatus ascending
                          select new { Display = "Level-" + z.LevelStatus, Value = z.LevelStatus }).Distinct().ToList();
            levelDropDownList.DataSource = getAll;
            levelDropDownList.DataValueField = "Value";
            levelDropDownList.DataTextField = "Display";
            levelDropDownList.DataBind();
            levelDropDownList.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        protected void showButton_Click(object sender, EventArgs e)
        {
            //var delPrevData = (from z in db.tbl_LevelCount
            //                   select z).ToList();
            //if (delPrevData.FirstOrDefault() != null)
            //{
            //    db.tbl_LevelCount.RemoveRange(delPrevData);
            //    db.SaveChanges();
            //}

            var getAll = (from z in db.tbl_UserSpotTrack
                          select new { z.CID, z.PID }).Distinct().ToList();
            int level = 0;
            string cid = "";
            foreach (var posi in getAll)
            {
                int sidLen = posi.PID.Length;
                var getLevel = from v in db.tbl_UserSpotTrack
                               where v.SID.Substring(0, sidLen) == posi.PID && v.SID.Length > sidLen && v.IsAvailable == "N"
                               group v by (v.SID).Length into g
                               select g.Count();
                foreach (var countLevelId in getLevel.ToList())
                {

                    if (posi.CID != cid)
                    {
                        level = 1;
                    }
                    else
                    {
                        level = level + 1;
                    }
                    int l1 = countLevelId;
                    var checkCid = db.tbl_LevelCount.FirstOrDefault(z => z.CID == posi.CID && z.LevelStatus == level);
                    if (checkCid == null)
                    {
                        tbl_LevelCount levelCount = new tbl_LevelCount();
                        levelCount.CID = posi.CID;
                        levelCount.TotalSpot = l1;
                        levelCount.LevelStatus = level;
                        if (level == 1 && l1 == 10)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 2 && l1 == 100)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 3 && l1 == 1000)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 4 && l1 == 10000)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 5 && l1 == 100000)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 6 && l1 == 1000000)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else if (level == 7 && l1 == 10000000)
                        {
                            levelCount.IsComplete = "Y";
                        }
                        else
                        {
                            levelCount.IsComplete = "N";
                        }
                        levelCount.IsPaid = "N";
                        db.tbl_LevelCount.Add(levelCount);

                    }
                    else
                    {
                        checkCid.TotalSpot = l1;
                        if (level == 1 && l1 == 10)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 2 && l1 == 100)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 3 && l1 == 1000)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 4 && l1 == 10000)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 5 && l1 == 100000)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 6 && l1 == 1000000)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else if (level == 7 && l1 == 10000000)
                        {
                            checkCid.IsComplete = "Y";
                        }
                        else
                        {
                            checkCid.IsComplete = "N";
                        }
                    }
                    db.SaveChanges();
                    cid = posi.CID;
                }

            }
            int lvl = Convert.ToInt32(levelDropDownList.SelectedValue);
            var getAllComplete = (from z in db.tbl_LevelCount
                                  //join c in db.tbl_UserInfo on z.CID equals c.CID
                                  join c in db.tbl_UserInfo on z.CID equals c.CID into cGroup
                                  from c in cGroup.DefaultIfEmpty()
                                  where z.LevelStatus == lvl
                                        && z.IsComplete == "Y" && z.IsPaid == "N"
                                  select new { z.CID, c.FullName, comLevel = "Level-" + z.LevelStatus }).ToList();
            levelGridView.DataSource = getAllComplete;
            levelGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in levelGridView.Rows)
            {
                string cid = ((Label)gvrow.FindControl("cidLabel")).Text;
                int comLevel = Convert.ToInt32(levelDropDownList.SelectedValue);
                string amount = ((TextBox)gvrow.FindControl("amount")).Text;
                var checkUser = db.tbl_LevelCount.FirstOrDefault(z => z.CID == cid && z.LevelStatus==comLevel);
                if (checkUser != null)
                {
                    tbl_UserAccount account=new tbl_UserAccount();
                    var tblUserInfo = db.tbl_UserInfo.FirstOrDefault(z=>z.CID==cid);
                    if (tblUserInfo != null)
                        account.UserId = tblUserInfo.AutoUserID;
                    account.CID = cid;
                    account.DatDate = DateTime.Now.Date;
                    account.TranType = 2;
                    account.TranCID = cid;
                    account.Amount = Convert.ToDouble(amount);
                    account.DebitCredit = "Credit";
                    checkUser.IsPaid = "Y";
                    db.tbl_UserAccount.Add(account);
                    db.SaveChanges();
                    paymentLiteral.Text = "<span style='color:#3C763D;background-color: #DFF0D8'>Level Income Dustribute Successfully.";
                    int lvl = Convert.ToInt32(levelDropDownList.SelectedValue);
                    var getAllComplete = (from z in db.tbl_LevelCount
                                          //join c in db.tbl_UserInfo on z.CID equals c.CID
                                          join c in db.tbl_UserInfo on z.CID equals c.CID into cGroup
                                          from c in cGroup.DefaultIfEmpty()
                                          where z.LevelStatus == lvl
                                                && z.IsComplete == "Y" && z.IsPaid == "N"
                                          select new { z.CID, c.FullName, comLevel = "Level-" + z.LevelStatus }).ToList();
                    levelGridView.DataSource = getAllComplete;
                    levelGridView.DataBind();
                    //GetAllUser();
                }
            }
        }
    }
}