using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_manufacturing_partner : System.Web.UI.Page
{
    SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
    public string strRequests = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        GetAllContactRequests();
    }
    public void GetAllContactRequests()
    {
        try
        {
            List<ManufacturingPartner> lcs = ManufacturingPartner.GetAllManufacturingPartner(conZP);
            int i = 0;
            foreach (ManufacturingPartner pro in lcs)
            {
                strRequests += @"<tr>   
                                <td>" + (i + 1) + @"</td>                                           
                                <td>" + pro.FullName + @"</td>
                                <td>" + pro.Company + @"</td>
                               <td><a href='CompanyEmail:" + pro.EmailId + "'>" + pro.EmailId + @"</a></td>
                                <td>" + pro.ContactNo + @"</td> 
                                <td class='text-center'><a href='javascript:void(0);' data-bs-toggle='modal' data-bs-target='#fadeInRightModal' class=' btnmsg' data-id=" + pro.Id + @" data-name=" + pro.FullName + @" Title='View More About Project'><i class='mdi mdi-email-outline h2 text-warning'></i></a></td>
                                <td class='text-center'><a href='"+pro.Document+ @"' download Title='Click to download'><i class='mdi mdi-cloud-download link-secondary h2'></i></a></td>
                                <td>" + pro.AddedOn.ToString("dd/MM/yyyy hh:mm tt") + @"</td> 
                                <td class='text-center'>
                                <a href='javascript:void(0);' class='bs-tooltip  fs-18 link-danger deleteItem' data-id='" + pro.Id + @"' data-bs-toggle='tooltip' data-placement='top' title='Delete'>
                                <i class='mdi mdi-trash-can-outline'></i></a></td>
                                </tr>";
                i++;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(Request.Url.PathAndQuery, "GetAllContactRequests", ex.Message);
        }
    }
    [WebMethod(EnableSession = true)]
    public static string Delete(string id)
    {
        string x = "";
        try
        {
            SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
            ManufacturingPartner BD = new ManufacturingPartner();
            BD.Id = Convert.ToInt32(id);
            int exec = ManufacturingPartner.DeleteManufacturingPartner(conZP, BD);
            if (exec > 0)
            {
                x = "Success";
            }
            else
            {
                x = "W";
            }
        }
        catch (Exception ex)
        {
            x = "W";
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "Delete", ex.Message);
        }
        return x;
    }
    [WebMethod(EnableSession = true)]
    public static string GetMessage(string id)
    {
        var message = "";
        try
        {
            SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
            message = ManufacturingPartner.GetAboutProjectById(conZP, id);
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetMessage", ex.Message);
        }
        return message;
    }
}