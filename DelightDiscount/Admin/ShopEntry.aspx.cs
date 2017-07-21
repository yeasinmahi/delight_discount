using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DelightDiscount.Admin
{
    public partial class ShopEntry : System.Web.UI.Page
    {
        DDDBEntities db=new DDDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLocation();


            }
        }

        public void GetLocation()
        {
            var getAll = (from c in db.tbl_ShopLocation
                select new{c.Id,c.LocationName}).ToList();;
            locationDropDownList.DataSource = getAll.AsEnumerable();
            locationDropDownList.DataTextField = "LocationName";
            locationDropDownList.DataValueField = "Id";
            locationDropDownList.DataBind();

            locationDropDownList.Items.Insert(0, new ListItem("--SELECT--", "0"));
        }
        protected void pruchaseSaveButton_Click(object sender, EventArgs e)
        {
            if (shopNameText.Value != "" && locationDropDownList.SelectedValue != "0" && addressText.Value != "" &&
                rankDropDownList.SelectedValue != "0" && statusDropDownList.SelectedValue != "0")
            {
                tbl_ShopInfo shopInfo=new tbl_ShopInfo();

                string filePath = logoFileUpload.PostedFile.FileName;
                string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filename);
                string contenttype = String.Empty;

                //Set the contenttype based on File Extension
                switch (ext)
                {
                    
                    case ".jpg":
                        contenttype = "image/jpg";
                        break;
                    case ".png":
                        contenttype = "image/png";
                        break;
                    case ".gif":
                        contenttype = "image/gif";
                        break;
                }
                if (contenttype != String.Empty)
                {

                    Stream fs = logoFileUpload.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    shopInfo.ShopLogo = bytes;

                    //lblMessage.ForeColor = System.Drawing.Color.Green;
                   
                }
                else
                {
                    //shopLiterel. = System.Drawing.Color.Red;
                    shopLiterel.Text = "File format not recognised." +
                      " Upload Image formats";
                }
                shopInfo.ShopName = shopNameText.Value.Trim();
                shopInfo.ShopLocation = locationDropDownList.SelectedValue;
                shopInfo.Address = addressText.Value;
                shopInfo.Rank = Convert.ToInt32(rankDropDownList.SelectedValue);
                shopInfo.Status = statusDropDownList.SelectedValue;
                db.tbl_ShopInfo.Add(shopInfo);
                db.SaveChanges();
                shopLiterel.Text = "File Uploaded Successfully";
            }
            
        }
    }
}