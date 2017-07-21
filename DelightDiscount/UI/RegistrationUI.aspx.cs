using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.UI
{
    public partial class RegistrationUI : System.Web.UI.Page
    {
        DDDBEntities db=new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            SaveInfo();
        }

        protected void SaveInfo()
        {
            string autoUseId = GenarateUserId();
            string password = CreatePassword();
            DateTime date = DateTime.ParseExact(joinDateText.Value, "dd/MM/yyyy", null);
            tbl_UserInfo userInfo=new tbl_UserInfo();

            userInfo.AutoUserID = autoUseId;
            userInfo.CID = cidText.Value.Trim();
            userInfo.Password = password;
            userInfo.UseName = userNameText.Value.Trim();
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
            userInfo.EntryBy = "Session";
            userInfo.EntryDate = DateTime.Now.Date;
            db.tbl_UserInfo.Add(userInfo);
            db.SaveChanges();

            tbl_UserAccount account=new tbl_UserAccount();
            var getUserId = db.tbl_UserInfo.FirstOrDefault(c => c.CID == referenceCidText.Value);
            if (getUserId!=null)
            {
                account.UserId = getUserId.AutoUserID;
                account.CID = referenceCidText.Value;
                account.DatDate = date;
                account.TranType = 1;
                account.TranCID = cidText.Value;
                account.Amount = 25;//25%
                account.DebitCredit = "Debit";
                db.tbl_UserAccount.Add(account);
                db.SaveChanges();
            }
            userLiterel.Text = "Save Successfully";
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
                            select new { u.AutoUserID};
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
    }
}