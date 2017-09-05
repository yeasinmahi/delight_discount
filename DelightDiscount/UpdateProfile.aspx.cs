using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount
{
    public partial class UpdateProfile : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
                if (userInfo != null)
                {
                    cidText.Value = userInfo.CID;
                    nameText.Value = userInfo.FullName;
                    mobileText.Value = userInfo.Mobile;
                    emailText.Value = userInfo.EmailAddress;
                    presentAddressTextarea.Value = userInfo.PresentAddress;
                    parmanentAddressTextarea.Value = userInfo.ParmanentAddress;
                    nomineeNameText.Value = userInfo.NomineeName;
                    nomineePhoneText.Value = userInfo.NomineeMobile;
                    relationText.Value = userInfo.Relation;
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(nameText.Value) && !String.IsNullOrWhiteSpace(mobileText.Value) &&
                !String.IsNullOrWhiteSpace(emailText.Value) && !String.IsNullOrWhiteSpace(presentAddressTextarea.Value) &&
                !String.IsNullOrWhiteSpace(parmanentAddressTextarea.Value) &&
                !String.IsNullOrWhiteSpace(nomineeNameText.Value) && !String.IsNullOrWhiteSpace(relationText.Value) &&
                !String.IsNullOrWhiteSpace(nomineePhoneText.Value) && !String.IsNullOrWhiteSpace(passwordText.Value))
            {

                var isAvailable = db.tbl_UserInfo.FirstOrDefault(z => z.CID == cidText.Value && z.Password==passwordText.Value.Trim());
                if (isAvailable!=null)
                {
                    isAvailable.FullName = nameText.Value.Trim();
                    isAvailable.Mobile = mobileText.Value.Trim();
                    isAvailable.EmailAddress = emailText.Value.Trim();
                    isAvailable.PresentAddress = presentAddressTextarea.Value;
                    isAvailable.ParmanentAddress = parmanentAddressTextarea.Value;
                    isAvailable.NomineeName = nomineeNameText.Value;
                    isAvailable.NomineeMobile = nomineePhoneText.Value;
                    isAvailable.Relation = relationText.Value;
                    if (mainImageFileUpload.HasFile && mainImageFileUpload.PostedFile.ContentLength > 0)
                    {

                        string fileName = mainImageFileUpload.FileName;

                        byte[] fileByte = mainImageFileUpload.FileBytes;
                        var binaryObj = new Binary(fileByte);
                        isAvailable.UserPic = fileByte;
                    }
                    db.SaveChanges();
                    userLiterel.Text = "<span style='color:#3C763D;background-color: #DFF0D8'>Profile Updated Successfully";
                }
                else
                {
                    userLiterel.Text =
                       "<span style='color:#A94464;background-color: #F2DEDE'>Invalid Password!";
                }
            }
            else
            {
                userLiterel.Text =
                        "<span style='color:#A94464;background-color: #F2DEDE'>Please fill all required feild!";
            }
        }
    }
}