using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class get_a_quote : System.Web.UI.Page
{
    SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                
                lblStatus.Visible = true;
                QuoteRequests cat = new QuoteRequests();
                cat.FirstName = txtName.Text.Trim();
                cat.Document = UploadDocument();
                cat.LastName = "";
                cat.EmailId = txtEmail.Text.Trim();
                cat.ContactNo = txtPhone.Text.Trim();
                cat.Message = txtMessage.Text.Trim();
                cat.Company = txtCompany.Text.Trim();
                if (cat.Document == "")
                {
                    lblStatus.Text = "Please upload the document to proceed.";
                    lblStatus.Attributes.Add("Class", "alert alert-danger d-block");
                    return;
                }
                int result = QuoteRequests.InserQuoteRequests(conZP, cat);
                if (result > 0)
                {
                    txtName.Text = txtEmail.Text = txtCompany.Text = txtPhone.Text = txtMessage.Text = "";
                    var sendtoAdmin = ContactRequest(cat);
                    var sendToUser = ContactUSRequestToCustomer(cat.FirstName, cat.EmailId);
                    //lblStatus.Text = "Thank you our team will get back to you soon";
                   //lblStatus.Attributes.Add("Class", "alert alert-success d-block");
                    Response.Redirect("/thank-you.aspx");
                }
                else
                {
                    lblStatus.Text = "There is some problem now. Please try after some time";
                    lblStatus.Attributes.Add("Class", "alert alert-danger d-block");
                }
            }
        }
        catch (Exception ex)
        {
            lblStatus.Text = "There is some problem now. Please try after some time";
            lblStatus.Attributes.Add("Class", "alert alert-danger d-block");
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "btnSubmit_Click", ex.Message);
        }
    }
    public static int ContactUSRequestToCustomer(string name, string email)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);

            mail.From = new MailAddress(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["fromName"]);
            mail.Subject = "ZPROTO";
            string Body = "Dear " + name + ",<br/><br/>We have received your request, our team will get back to you soon.  <br/><br/>Regards,<br/>ZPROTO<br/>";
            mail.Body = Body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["host"];
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
            smtp.Credentials = new System.Net.NetworkCredential
                   (ConfigurationManager.AppSettings["userName"], ConfigurationManager.AppSettings["password"]);
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSsl"]);
            smtp.Send(mail);
            return 1;
        }
        catch (Exception exx)
        {

            return 0;

        }
    }
    public static int ContactRequest(QuoteRequests con)
    {
        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(ConfigurationManager.AppSettings["ToMail"]);
            if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["CCMail"]))
            {
                mail.CC.Add(ConfigurationManager.AppSettings["CCMail"]);
            }
            if (!string.IsNullOrEmpty(ConfigurationManager.AppSettings["BCCMail"]))
            {
                mail.Bcc.Add(ConfigurationManager.AppSettings["BCCMail"]);
            }
            mail.From = new MailAddress(ConfigurationManager.AppSettings["from"], ConfigurationManager.AppSettings["fromName"]);
            mail.Subject = "Quote Request - ZPROTO ( " + DateTime.Now + " )";
            mail.Body = "Hi Admin, <br><br>You have received a Quote request from " + con.FirstName + ".<br><br><u><b><i>Details : </i></b></u><br>Name : " + con.FirstName + "<br>Company : " + con.Company + "<br>Email-Id : " + con.EmailId + "<br>Mobile : " + con.ContactNo + "<br>Message : " + con.Message + "<br>Document : <a href="+ConfigurationManager.AppSettings["domain"] + con.Document + ">Click here</a><br><br><br>Regards,<br>ZPROTO";
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["host"];
            smtp.Port = Convert.ToInt32(ConfigurationManager.AppSettings["port"]);
            smtp.Credentials = new System.Net.NetworkCredential
                           (ConfigurationManager.AppSettings["userName"], ConfigurationManager.AppSettings["password"]);
            smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["enableSsl"]);
            smtp.Send(mail);
            return 1;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "ContactRequest", ex.Message);
            return 0;
        }
    }
  /*  private string CheckThumbFormat()
    {
        #region ThumbImage
        string thumbImg = "";
        if (FileUpload1.HasFile)
        {
            try
            {
                string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName.ToLower()), ImageGuid1 = Guid.NewGuid().ToString();
                if ((fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif" || fileExtension == ".webp"))
                {
                    System.Drawing.Bitmap bitimg = new System.Drawing.Bitmap(FileUpload1.PostedFile.InputStream);
                    if ((bitimg.PhysicalDimension.Height != 500) || (bitimg.PhysicalDimension.Width != 600))
                    {
                        return "Size";
                    }
                }
                else
                {

                    return "Format";
                }
            }
            catch (Exception ex)
            {
                ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "CheckThumbFormat", ex.Message);

            }
        }
        #endregion
        return thumbImg;
    }*/
    public string UploadDocument()
    {
        #region upload file
        string thumbfile = "";
        try
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName.ToLower()), ImageGuid1 = Guid.NewGuid().ToString() + "-quote".Replace(" ", "-").Replace(".", "");
                string iconPath = Server.MapPath(".") + "../UploadImages\\" + ImageGuid1 + "" + fileExtension;
                try
                {
                    if (File.Exists(Server.MapPath("~/" + Convert.ToString(lblThumb.Text))))
                    {
                        File.Delete(Server.MapPath("~/" + Convert.ToString(lblThumb.Text)));
                    }
                }
                catch (Exception eeex)
                {
                    ExceptionCapture.CaptureException(Request.Url.PathAndQuery, "UploadDocument", eeex.Message);
                    return lblThumb.Text;
                }
                FileUpload1.SaveAs(iconPath);
                thumbfile = "UploadImages/" + ImageGuid1 + "" + fileExtension;
            }
            else
            {
                thumbfile = lblThumb.Text;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "UploadDocument", ex.Message);

        }

        #endregion
        return thumbfile;
    }
}