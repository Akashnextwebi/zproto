using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection conZP = new SqlConnection(ConfigurationManager.ConnectionStrings["conZP"].ConnectionString);
    public string strFooterblog = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindRecentBlogs();
    }
    public void BindRecentBlogs()
    {
        try
        {
            strFooterblog = "";
            List<BlogDetails> blogs = BlogDetails.GetRecentBlogsForFooter(conZP);
            if (blogs.Count > 0)
            {
                foreach (BlogDetails del in blogs)
                {
                    strFooterblog += @"<li><a href='/blog/"+del.BlogUrl+@"'>"+del.BlogTitle+@"</a></li>";
                }
            }
        }
        catch (Exception ex)
        {

            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "BindRecentBlogs", ex.Message);
        }
    }
}
