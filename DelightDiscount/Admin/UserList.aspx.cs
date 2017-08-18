using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.Admin
{
    public partial class UserList : System.Web.UI.Page
    {
        DDDBEntities db = new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllUser();
            }
        }

        protected void GetAllUser()
        {
            var getAll = (from z in db.tbl_UserInfo
                          select new { z.CID, z.FullName, z.EmailAddress, z.Mobile, z.Password, z.ReferenceCid }).ToList();
            userGridView.DataSource = getAll;
            userGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in userGridView.Rows)
            {
                string cid = ((Label)gvrow.FindControl("idLabel")).Text;
                string password = ((TextBox)gvrow.FindControl("passwordTextBox")).Text;
                var checkUser = db.tbl_UserInfo.FirstOrDefault(z => z.CID == cid);
                if (checkUser != null)
                {
                    checkUser.Password = password;
                    db.SaveChanges();
                    userLiteral.Text = "<span style='color:#3C763D;background-color: #DFF0D8'>User information updated successfully.";
                    GetAllUser();
                }
            }
        }
    }
}