using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.Admin
{
    public partial class RegistrationUI : System.Web.UI.Page
    {
        private static DDDBEntities db = new DDDBEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (cidText.Value.Trim().Length==8)
            {
                SaveInfo();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('CID must be 8 digit length and like (DD******)')", true);
            }
        }

        protected void SaveInfo()
        {
            string autoUseId = GenarateUserId();
            string password = CreatePassword();

            var checkCid = db.tbl_UserInfo.FirstOrDefault(z => z.CID == cidText.Value.Trim());
            if (checkCid == null)
            {
                if (!String.IsNullOrEmpty(cidText.Value) && !String.IsNullOrEmpty(nameText.Value) &&
                    !String.IsNullOrEmpty(emailText.Value)
                    && !String.IsNullOrEmpty(mobileText.Value) && !String.IsNullOrEmpty(nomineeNameText.Value) &&
                    !String.IsNullOrEmpty(referenceCidText.Value)
                    && !String.IsNullOrEmpty(joinDateText.Value))
                {
                    tbl_Operator oOperator = (tbl_Operator)Session["opAdmin"];
                    tbl_UserInfo userInfo = new tbl_UserInfo();
                    DateTime date = DateTime.ParseExact(joinDateText.Value, "dd/MM/yyyy", null);
                    userInfo.AutoUserID = autoUseId;
                    userInfo.CID = cidText.Value.Trim();
                    userInfo.Password = password;
                    //userInfo.UseName = userNameText.Value.Trim();
                    userInfo.FullName = nameText.Value;
                    userInfo.PresentAddress = presentAddressTextarea.Value;
                    userInfo.ParmanentAddress = parmanentAddressTextarea.Value;
                    userInfo.EmailAddress = emailText.Value;
                    userInfo.Mobile = mobileText.Value;
                    userInfo.NomineeName = nomineeNameText.Value;
                    userInfo.Relation = relationText.Value;
                    userInfo.NomineeMobile = nomineePhoneText.Value;
                    userInfo.ReferenceCid = referenceCidText.Value.Trim();
                    userInfo.JoinDate = date;
                    userInfo.CurrentLevel = 1;
                    userInfo.IsActive = "Y";
                    userInfo.EntryBy = oOperator.Name;
                    userInfo.EntryDate = DateTime.Now.Date;
                    if (mainImageFileUpload.HasFile && mainImageFileUpload.PostedFile.ContentLength > 0)
                    {

                        string fileName = mainImageFileUpload.FileName;

                        byte[] fileByte = mainImageFileUpload.FileBytes;
                        var binaryObj = new Binary(fileByte);
                        userInfo.UserPic = fileByte;
                    }
                    db.tbl_UserInfo.Add(userInfo);
                    db.SaveChanges();

                    //Insert into User Spot
                    //var a = placementDropDownList.DataValueField;
                    //var b = placementDropDownList.DataTextField;
                    int sl = Convert.ToInt32(placementDropDownList.SelectedItem.Text.Substring(8));
                    var isAvailable =
                        db.tbl_UserSpotTrack.FirstOrDefault(
                            z =>
                                z.CID == placementDropDownList.SelectedItem.Text.Substring(0, 7) &&
                                z.SlTrk == sl &&
                                z.IsAvailable == "Y");
                    if (isAvailable != null)
                    {
                        for (int i = 0; i < 10; i++)
                        {
                            tbl_UserSpotTrack spotTrack = new tbl_UserSpotTrack();
                            spotTrack.CID = cidText.Value;
                            spotTrack.PID = placementDropDownList.SelectedValue;
                            spotTrack.SID = placementDropDownList.SelectedValue + "" + i;
                            spotTrack.IsAvailable = "Y";
                            spotTrack.SlTrk = i + 1;
                            db.tbl_UserSpotTrack.Add(spotTrack);
                            db.SaveChanges();
                        }
                        isAvailable.IsAvailable = "N";
                        isAvailable.UCID = cidText.Value;
                        db.SaveChanges();
                    }


                    tbl_UserAccount account = new tbl_UserAccount();
                    var getUserId = db.tbl_UserInfo.FirstOrDefault(c => c.CID == referenceCidText.Value);
                    if (getUserId != null)
                    {
                        account.UserId = getUserId.AutoUserID;
                        account.CID = referenceCidText.Value;
                        account.DatDate = date;
                        account.TranType = 1;
                        account.TranCID = cidText.Value;
                        account.Amount = 150; //25%
                        account.DebitCredit = "Credit";
                        db.tbl_UserAccount.Add(account);
                        db.SaveChanges();
                    }

                    ProvideGenerationBonus();
                    MailMessage Msg = new MailMessage();
                    Msg.From = new MailAddress("info@delightdiscount.com", "Delight Discount");
                    Msg.To.Add(emailText.Value);
                    Msg.Subject = "Delight Discount Account Confirmation";
                    Msg.Body = "Welcome To DelightDiscount \n DelightDiscount ID: " + cidText.Value + "\n Password: " +
                               password;
                    SmtpClient client = new SmtpClient();
                    client.Host = "mail.delightdiscount.com";
                    client.Port = 25;
                    client.Credentials = new NetworkCredential("info@delightdiscount.com", "dd@54321");
                    client.Send(Msg);

                    userLiterel.Text = "<span style='color:#3C763D;background-color: #DFF0D8'>Save Successfully";
                    ClearPage();
                }
                else
                {
                    userLiterel.Text =
                        "<span style='color:#A94464;background-color: #F2DEDE'>Please fill all required feild!";
                }

            }
            else
            {
                userLiterel.Text =
                    "<span style='color:#A94464;background-color: #F2DEDE'>This CID Number Already Exist!";
            }

        }

        //Generate AutoUserId
        private string GenarateUserId()
        {
            int year = DateTime.Now.Year;
            //txtmdmu.Text = branchInitial.VarBranchInitial;
            int seedNums = 1;
            char pads = '0';
            //string studentId = null;
            var getInvoId = from u in db.tbl_UserInfo
                where u.AutoUserID.Substring(3, 4) == year.ToString()
                select new {u.AutoUserID};
            string result = getInvoId.Max(element => element.AutoUserID);
            if (result != null)
            {
                string subs = result.Substring(8);
                seedNums = Convert.ToInt32(subs);
                seedNums = seedNums + 1;
                return ("DD-" + DateTime.Now.Year + "-" + seedNums.ToString().PadLeft(6, pads));
            }
            return ("DD-" + DateTime.Now.Year + "-" + seedNums.ToString().PadLeft(6, pads));

        }

        //Generate Password
        public string CreatePassword()
        {
            int length = 8;
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();
        }

        protected void checkButton_Click(object sender, EventArgs e)
        {
            if (referenceCidText.Value.Trim() != "")
            {
                var getName = db.tbl_UserInfo.FirstOrDefault(c => c.CID == referenceCidText.Value.Trim());
                if (getName != null)
                {
                    refNameLabel.InnerText = getName.FullName;
                    var getRefIdSpot = db.tbl_UserSpotTrack.FirstOrDefault(c => c.CID == referenceCidText.Value.Trim());
                    if (getRefIdSpot != null)
                    {
                        int pidLength = getRefIdSpot.PID.Length;
                        var getAllPlacement = (from z in db.tbl_UserSpotTrack
                                               where z.PID.Substring(0, pidLength) == getRefIdSpot.PID && z.IsAvailable == "Y"
                                               select new { display = z.CID + "-" + z.SlTrk, value = z.SID }).ToList();
                        placementDropDownList.DataSource = getAllPlacement;
                        placementDropDownList.DataTextField = "display";
                        placementDropDownList.DataValueField = "value";
                        placementDropDownList.DataBind();
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                        "alert('Invalid Reference CID!')", true);

                }
            }
        }

        public void ClearPage()
        {
            referenceCidText.Value = String.Empty;
            placementDropDownList.DataSource = null;
            placementDropDownList.DataBind();
            joinDateText.Value = String.Empty;
            refNameLabel.InnerText = "";
            cidText.Value = String.Empty;
            nameText.Value = String.Empty;
            mobileText.Value = String.Empty;
            emailText.Value = String.Empty;
            presentAddressTextarea.Value = String.Empty;
            parmanentAddressTextarea.Value = String.Empty;
            nomineeNameText.Value = String.Empty;
            relationText.Value = String.Empty;
            nomineePhoneText.Value = String.Empty;
        }

        protected void clearButton_Click(object sender, EventArgs e)
        {
            //ProvideGenerationBonus();
            ClearPage();
        }

        //[WebMethod]
        //public static object CheckRefId(string refId)
        //{
        //    var getName = db.tbl_UserInfo.FirstOrDefault(c => c.CID == refId);
        //    if (getName != null)
        //    {
                
        //        //refNameLabel.InnerText = getName.FullName;
        //        var getRefIdSpot = db.tbl_UserSpotTrack.FirstOrDefault(c => c.CID == refId.Trim());
        //        if (getRefIdSpot != null)
        //        {
        //            int pidLength = getRefIdSpot.PID.Length;
        //            //List<ListItem> getAllPlacement = new List<ListItem>();
        //           var getAllPlacement = (from z in db.tbl_UserSpotTrack
        //                where z.PID.Substring(0, pidLength) == getRefIdSpot.PID && z.IsAvailable == "Y"
        //                select new {display = (z.CID + "-" + z.SlTrk), value = z.SID}).ToList();
        //            return getAllPlacement;

        //        }
        //    }
        //    var s = new List<string>();
        //    return s;
        //}

        public void ProvideGenerationBonus()
        {
            var getPid = db.tbl_UserSpotTrack.FirstOrDefault(z => z.CID == referenceCidText.Value);
            if (getPid!=null)
            {
                string pid = getPid.PID.Remove(getPid.PID.Length-1);
                int generation = 1;
                for (int i = pid.Length; i > 0; i--)
                {
                    if (generation<6)
                    {
                        tbl_UserAccount userAccount = new tbl_UserAccount();
                        var getCid = db.tbl_UserSpotTrack.FirstOrDefault(z => z.PID == pid);
                        if (getCid != null)
                        {
                            //userAccount.UserId = GenarateUserId();
                            userAccount.CID = getCid.CID;
                            userAccount.DatDate = DateTime.Now.Date;
                            userAccount.TranType = 5;//Generation Income ID=5
                            userAccount.TranCID = referenceCidText.Value.Trim();
                            if (generation == 1)
                            {
                                userAccount.Amount = 10;
                            }
                            else if (generation == 2)
                            {
                                userAccount.Amount = 8;
                            }
                            else if (generation == 3)
                            {
                                userAccount.Amount = 6;
                            }
                            else if (generation == 4)
                            {
                                userAccount.Amount = 4;
                            }
                            else if (generation == 5)
                            {
                                userAccount.Amount = 2;
                            }
                            userAccount.DebitCredit = "Credit";
                            db.tbl_UserAccount.Add(userAccount);
                            db.SaveChanges();
                            pid = pid.Remove(pid.Length - 1);
                            generation += 1;
                        }
                    }
                }
            }
        }
    }
}
