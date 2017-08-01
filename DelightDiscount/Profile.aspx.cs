using System;
using System.Linq;

namespace DelightDiscount
{
    public partial class Profile : System.Web.UI.Page
    {
        DDDBEntities db=new DDDBEntities();
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
            string cid = userInfo.CID;
            var getAll = db.tbl_UserInfo.FirstOrDefault(z => z.CID == cid);
            if (getAll!=null)
            {
                userNameLabel.InnerText = getAll.UseName;
                fullNameLabel.InnerText = getAll.FullName;
                presentAddressLabel.InnerText = getAll.PresentAddress;
                permanentAddressLabel.InnerText = getAll.ParmanentAddress;
                emailLabel.InnerText = getAll.EmailAddress;
                mobileLabel.InnerText = getAll.Mobile;
                nomineeLabel.InnerText = getAll.NomineeName;
                relationLabel.InnerText = getAll.Relation;
                nomineePhoneLabel.InnerText = getAll.NomineeMobile;
            }
        }
    }
}