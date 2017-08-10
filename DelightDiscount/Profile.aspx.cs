using System;
using System.Linq;

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
                    //userNameLabel.InnerText = getAll.UseName;
                    fullNameLabel.InnerText = getAll.FullName;
                    presentAddressLabel.InnerText = getAll.PresentAddress;
                    permanentAddressLabel.InnerText = getAll.ParmanentAddress;
                    emailLabel.InnerText = getAll.EmailAddress;
                    mobileLabel.InnerText = getAll.Mobile;
                    nomineeLabel.InnerText = getAll.NomineeName;
                    relationLabel.InnerText = getAll.Relation;
                    nomineePhoneLabel.InnerText = getAll.NomineeMobile;
                    //var getImage = dbEntities.tbl_ImageStores.FirstOrDefault(x => x.FinalItemCode == finalProductId);
                    System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
                    byte[] byteImage = getAll.UserPic.ToArray();
                    Convert.ToBase64String(byteImage);
                    imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
                    //mainImage.Style.Add("display", "none");
                    plProductImg.Controls.Add(imgBarCode);
                }
                else
                {
                    Response.Redirect("LogIn.aspx");
                }


            }
        }
    }
}