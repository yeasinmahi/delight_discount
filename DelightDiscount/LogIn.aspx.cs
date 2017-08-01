using System;
using System.Linq;
using System.Collections.Generic;
using System.Drawing;
using System.Net.Mail;
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
                var isExist = db.tbl_UserInfo.FirstOrDefault(c => c.CID == userId && c.Password == password);
                if (isExist!=null)
                {
                    Session["op"] = isExist;
                    Response.Redirect("Default.aspx");
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

        protected void ForgotPasswordSentClick(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient
            {
                DeliveryMethod = SmtpDeliveryMethod.Network,
                EnableSsl = true,
                Host = "smtp.gmail.com",
                Port = 587
            };

            // setup Smtp authentication
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("nalucky72@gmail.com", "lucky7218");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage {From = new MailAddress("nalucky72@gmail.com")};
            msg.To.Add(new MailAddress("yeasinmahi72@gmail.com"));

            msg.Subject = "This is a test Email subject";
            msg.IsBodyHtml = true;
            msg.Body = "<html><head></head><body><b>Test HTML Email</b></body>";

            try
            {
                client.Send(msg);
                //lblMsg.Text = "Your message has been successfully sent.";
            }
            catch (Exception ex)
            {
                //lblMsg.ForeColor = Color.Red;
                //lblMsg.Text = "Error occured while sending your message." + ex.Message;
            }
        }
    }
}