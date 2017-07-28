using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount
{
    public partial class Site_Mobile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["op"] != null)
            {
                tbl_UserInfo userInfo = (tbl_UserInfo) Session["op"];
                userName.InnerText = userInfo.FullName;
                signIn.Attributes.Add("class","hidden");
                user.Attributes.Remove("class");
            }
            else
            {
                signIn.Attributes.Remove("class");
                user.Attributes.Add("class", "hidden");
            }
        }

        protected void OnServerClick(object sender, EventArgs e)
        {
            if (Session["op"] != null)
            {
                Session["op"] = null;
                signIn.Attributes.Remove("class");
                user.Attributes.Add("class", "hidden");
            }
        }
    }
}