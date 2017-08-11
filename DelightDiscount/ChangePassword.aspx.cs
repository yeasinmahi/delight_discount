using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        DDDBEntities db=new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(oldPasswordTextBox.Text) && !String.IsNullOrEmpty(newPasswordTextBox.Text) && !String.IsNullOrEmpty(passTextBox.Text))
            {
                tbl_UserInfo userInfo = (tbl_UserInfo)Session["op"];
                var checkOldPass =
                    db.tbl_UserInfo.FirstOrDefault(
                        z => z.CID == userInfo.CID && z.Password == oldPasswordTextBox.Text.Trim());
                if (checkOldPass!=null)
                {
                    if (newPasswordTextBox.Text.Trim()==passTextBox.Text.Trim())
                    {
                        checkOldPass.Password = passTextBox.Text;
                        db.SaveChanges();
                        passwordChangeLiteral.Text="<span style='color:#3C763D;background-color: #DFF0D8'>Password changed Successfully";
                        Session["op"] = null;
                        Response.Redirect("LogIn.aspx");
                    }
                    else
                    {
                        passwordChangeLiteral.Text = "<span style='color:#A94464;background-color: #F2DEDE'>Password not matched!";
                    }
                }
                else
                {
                    passwordChangeLiteral.Text = "<span style='color:#A94464;background-color: #F2DEDE'>Wrong old password!";
                }
            }
            else
            {
                passwordChangeLiteral.Text = "<span style='color:#A94464;background-color: #F2DEDE'>Please fill all feild!";
            }
        }
    }
}