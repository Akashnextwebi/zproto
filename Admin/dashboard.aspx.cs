using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services;

public partial class Admin_dashboard : System.Web.UI.Page
{
    SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
    public string Strusername = "", strNofContactReq = "", strNoOfBlogs="", strNoOfConsultreq = "", strNoOfManufacturingReq = "", StrContact = "";
    protected void Page_Load(object sender, EventArgs e)
    {//check if admin login is valid
        if (Request.Cookies["zp_aid"] == null)
        {
            Response.Redirect("Default.aspx", false);
        }

        BindUserName();
        GetTo10ConctactReq();
        NoOfContactUs();
        NoOfBlogs();
        NoOfConsultationRequests();
        NoOfManufacturingPartner();
    }

    private void NoOfContactUs()
    {
        decimal cntC = ContactUs.NoOfContactUs(conZP);
        strNofContactReq = cntC.ToString();
    }
    private void NoOfBlogs()
    {
        decimal cntB = BlogDetails.NoOfBlogs(conZP);
        strNoOfBlogs = cntB.ToString();
    }

    private void NoOfConsultationRequests()
    {
        decimal cntCC = ConsultationRequests.NoOfConsultationRequests(conZP);
        strNoOfConsultreq = cntCC.ToString();
    }

    private void NoOfManufacturingPartner()
    {
        decimal cntM = ManufacturingPartner.NoOfManufacturingPartner(conZP);
        strNoOfManufacturingReq = cntM.ToString();
    }

    public void BindUserName()
    {
        try
        {
            Strusername = CreateUser.GetLoggedUserName(conZP, Request.Cookies["zp_aid"].Value);
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindUserName", ex.Message);
        }
    }
    public void GetTo10ConctactReq()
    {
        try
        {
            List<ContactUs> lcs = ContactUs.GetTop10Requests(conZP);
            int i = 0;
            foreach (ContactUs pro in lcs)
            {
                StrContact += @"<tr>   
                                <td>" + (i + 1) + @"</td>                                           
                                <td>" + pro.FirstName + @"</td>
                                <td>" + pro.LastName + @"</td>
                                <td>" + pro.Company + @"</td>
                               <td><a href='CompanyEmail:" + pro.EmailId + "'>" + pro.EmailId + @"</a></td>
                                <td>" + pro.ContactNo + @"</td> 
                                <td>" + pro.AddedOn.ToString("dd/MM/yyyy hh:mm tt") + @"</td> 
                                <td class='text-center'><a href='javascript:void(0);' data-bs-toggle='modal' data-bs-target='#fadeInRightModal' data-message='"+pro.Message+@"' class='btnmsg' data-id=" + pro.Id + @" data-name=" + pro.FirstName + @"><i class='mdi mdi-email-outline h3 text-warning'></i></a></td>
                                </tr>";
                i++;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(Request.Url.PathAndQuery, "GetAllContactRequests", ex.Message);
        }
    }

}