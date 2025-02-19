using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact_us : System.Web.UI.Page
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
                ContactUs cat = new ContactUs();
                cat.FirstName = txtName.Text.Trim();
                cat.LastName = "";
                cat.EmailId = txtEmail.Text.Trim();
                cat.ContactNo = txtPhone.Text.Trim();
                cat.Message = txtMessage.Text.Trim();
                cat.Company = txtCompany.Text.Trim();
                int result = ContactUs.InserContactUs(conZP, cat);
                if (result > 0)
                {
                    txtName.Text = txtEmail.Text = txtCompany.Text= txtPhone.Text = txtMessage.Text = "";
                    var sendtoAdmin = ContactRequest(cat);
                    var sendToUser=ContactUSRequestToCustomer(cat.FirstName, cat.EmailId);
                   // lblStatus.Text = "Thank you our team will get back to you soon";
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
    public static int ContactRequest(ContactUs con)
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
            mail.Subject = "Contact Us Request - ZPROTO ( " + DateTime.Now + " )";
            mail.Body = "Hi Admin, <br><br>You have received a contact request from " + con.FirstName + ".<br><br><u><b><i>Details : </i></b></u><br>Name : " + con.FirstName + "<br>Company : " + con.Company + "<br>Email-Id : " + con.EmailId + "<br>Mobile : " + con.ContactNo + "<br>Message : " + con.Message + "<br><br><br>Regards,<br>ZPROTO";
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
    protected void btnCSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                lblCStatus.Visible = true;
                ConsultationRequests cr = new ConsultationRequests();
                cr.FirstName = txtCFName.Text.Trim();
                cr.LastName = txtCLName.Text.Trim();
                cr.EmailId = txtCEmail.Text.Trim();
                cr.ContactNo = txtCPhone.Text.Trim();
                cr.Message = txtCMessage.Text.Trim();
                cr.Company = txtCCompany.Text.Trim();
                cr.PreferredDate = txtCDateTime.Text.Trim();
                int result = ConsultationRequests.InserConsultationRequests(conZP, cr);
                if (result > 0)
                {
                    txtCFName.Text= txtCLName.Text = txtCEmail.Text = txtCCompany.Text = txtCPhone.Text = txtCMessage.Text = "";
                    var sendtoAdmin = ConsultationRequestsToAdmin(cr);
                    var sendToUser = ContactUSRequestToCustomer(cr.FirstName, cr.EmailId);
                    //lblCStatus.Text = "Thank you our team will get back to you soon";
                    //lblCStatus.Attributes.Add("Class", "alert alert-success d-block");
                    Response.Redirect("/thank-you.aspx");
                }
                else
                {
                    lblCStatus.Text = "There is some problem now. Please try after some time";
                    lblCStatus.Attributes.Add("Class", "alert alert-danger d-block");
                }
            }
        }
        catch (Exception ex)
        {
            lblCStatus.Text = "There is some problem now. Please try after some time";
            lblCStatus.Attributes.Add("Class", "alert alert-danger d-block");
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "btnSubmit_Click", ex.Message);
        }
    }
    public static int ConsultationRequestsToAdmin(ConsultationRequests cr)
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
            mail.Subject = "Contact Us Request - ZPROTO ( " + DateTime.Now + " )";
            mail.Body = "Hi Admin, <br><br>You have received a Consultation Requests from " + cr.FirstName + ".<br><br><u><b><i>Details : </i></b></u><br>Name : " + cr.FirstName + "<br>LastName : " + cr.LastName + "<br>Preferred Date & Time : " + cr.PreferredDate + "<br>Company : " + cr.Company + "<br>Email-Id : " + cr.EmailId + "<br>Mobile : " + cr.ContactNo + "<br>Message : " + cr.Message + "<br><br><br>Regards,<br>ZPROTO";
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "ConsultationRequestsToAdmin", ex.Message);
            return 0;
        }
    }

}