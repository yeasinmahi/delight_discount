using System;
using System.Linq;
using System.Web.UI;

namespace DelightDiscount.Admin
{
    public partial class LoginUI : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClick(object sender, EventArgs e)
        {
            string userId = UserName.Text;
            string password = Password.Text;
            if (userId.Trim() != "" && password.Trim() != "")
            {
                var isExist = db.tbl_Operator.FirstOrDefault(c => c.UserId == userId && c.Password == password);
                if (isExist != null)
                {
                    Session["opAdmin"] = isExist;
                    Response.Redirect("~/Admin/RegistrationUI.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid CID or Password!')", true);

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please insert valid CID and Password!')", true);
            }
        }
       
    }
}