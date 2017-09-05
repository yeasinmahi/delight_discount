using System;
using System.Linq;
using System.Web.Services.Protocols;

namespace DelightDiscount
{
    public partial class Profile : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserInfo();
            }
        }

        protected void LoadUserInfo()
        {
            tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
            if (userInfo != null)
            {
                string cid = userInfo.CID;
                var getAll = db.tbl_UserInfo.FirstOrDefault(z => z.CID == cid);
                if (getAll != null)
                {
                    int count = db.tbl_UserInfo.Count(x => x .ReferenceCid==getAll.CID); 
                    //userNameLabel.InnerText = getAll.UseName;
                    fullNameLabel.InnerText = getAll.FullName;
                    presentAddressLabel.InnerText = getAll.PresentAddress;
                    permanentAddressLabel.InnerText = getAll.ParmanentAddress;
                    emailLabel.InnerText = getAll.EmailAddress;
                    mobileLabel.InnerText = getAll.Mobile;
                    nomineeLabel.InnerText = getAll.NomineeName;
                    relationLabel.InnerText = getAll.Relation;
                    nomineePhoneLabel.InnerText = getAll.NomineeMobile;
                    sponsorLabel.InnerText = count.ToString();
                    var getLevel = from c in db.tbl_LevelCount
                        where c.CID == userInfo.CID && c.IsComplete == "Y"
                        select new{c.LevelStatus};
                    if ( getLevel.Any())
                    {
                        int result = (int)getLevel.Max(element => element.LevelStatus);
                        if (getLevel.FirstOrDefault() != null)
                        {
                            businessLevelLabel.InnerText = "Level-" + result;
                        }
                    }
                    else
                    {
                        businessLevelLabel.InnerText = "Level-0";
                    }
                    
                    //else if (count>=10 && count<100)
                    //{
                    //    businessLevelLabel.InnerText = "Level-1";
                    //}
                    //else if (count>=100 && count<1000)
                    //{
                    //    businessLevelLabel.InnerText = "Level-2";
                    //}
                    //else if (count >= 1000 && count < 10000)
                    //{
                    //    businessLevelLabel.InnerText = "Level-3";
                    //}
                    //else if (count >= 10000 && count < 100000)
                    //{
                    //    businessLevelLabel.InnerText = "Level-4";
                    //}
                    //else if (count >= 100000 && count < 1000000)
                    //{
                    //    businessLevelLabel.InnerText = "Level-5";
                    //}
                    //else if (count >= 1000000 && count < 10000000)
                    //{
                    //    businessLevelLabel.InnerText = "Level-6";
                    //}
                    //else
                    //{
                    //    businessLevelLabel.InnerText = "Level-7";
                    //}
                    var getAllIncome = (from z in db.tbl_UserAccount
                                        where z.CID == cid
                                        select new { z.DatDate, z.Amount, z.TranCID, z.DebitCredit }).ToList();
                    var creditIncome = getAllIncome.Where(x => x.DebitCredit == "Credit").Select(x => x.Amount).Sum();
                    var debitIncome = getAllIncome.Where(x => x.DebitCredit == "Debit").Select(x => x.Amount).Sum();
                    traBalanceLabel.InnerText = debitIncome.ToString();
                    activeBalanceLabel.InnerText = (creditIncome-debitIncome).ToString();
                    //var getImage = dbEntities.tbl_ImageStores.FirstOrDefault(x => x.FinalItemCode == finalProductId);
                    System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                    if (getAll.UserPic!=null)
                    {
                        byte[] byteImage = getAll.UserPic.ToArray();
                        Convert.ToBase64String(byteImage);
                        imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                        //mainImage.Style.Add("display", "none");
                        plProductImg.Controls.Add(imgBarCode);    
                    }
                    
                }
                else
                {
                    Response.Redirect("LogIn.aspx");
                }


            }
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProfile.aspx");
        }
    }
}