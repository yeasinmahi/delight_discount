using System;
using System.Linq;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace DelightDiscount
{
    public partial class LogIn : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void logInButton_Click(object sender, EventArgs e)
        {
            string userId = emailText.Value;
            string password = passwordText.Value;
            if (userId.Trim()!="" && password.Trim()!="")
            {
                var isExist = db.tbl_UserInfo.FirstOrDefault(c => c.EmailAddress == userId && c.Password == password);
                if (isExist!=null)
                {
                    Session["op"] = isExist;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Email or Password!')", true);
                    
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please insert valid Email and Password!')", true);
            }
        }
    }
}