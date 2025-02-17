using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DashBoard
/// </summary>
public class DashBoard
{
    public DashBoard()
    {
        //
        // TODO: Add constructor logic here
        //
    }



    /// <summary>
    /// Get all  orders from db 
    /// </summary>
    /// <param name="conZP">DB connection</param>
    /// <returns>All list</returns>


    public static decimal GetTotalSales(SqlConnection conZP)
    {
        decimal x = 0;
        try
        {
            string query = " Select Sum(try_convert(decimal, PaidAmount)) as PaidAmount from Orders Where  BookingStatus != 'Initiated' and  BookingStatus != 'Deleted'";
            SqlCommand cmd = new SqlCommand(query, conZP);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                decimal cnt = 0;
                decimal.TryParse(Convert.ToString(dt.Rows[0]["PaidAmount"]), out cnt);
                x = cnt;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetTotalSales", ex.Message);
        }
        return x;
    }


    public static int GetOrderCount(SqlConnection conZP)
    {
        int x = 0;
        try
        {
            string query = " Select * from Orders Where BookingStatus!= 'Deleted'";
            SqlCommand cmd = new SqlCommand(query, conZP);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            x = dt.Rows.Count;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetOrderCount", ex.Message);
        }
        return x;
    }





    public static int GetCustomerCount(SqlConnection conZP)
    {
        int x = 0;
        try
        {
            string query = " Select * from CustomerDetails Where Status='Active'";
            SqlCommand cmd = new SqlCommand(query, conZP);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            x = dt.Rows.Count;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetStudentCount", ex.Message);
        }
        return x;
    }

    public static int GetCustomerCountbyAguid(SqlConnection conZP)
    {
        int x = 0;
        try
        {
            string query = "Select * from CustomerDetails Where Status='Active' and ArchitectGuid=@ArchitectGuid";
            SqlCommand cmd = new SqlCommand(query, conZP);
            cmd.Parameters.AddWithValue("@ArchitectGuid", SqlDbType.NVarChar).Value = Convert.ToString(HttpContext.Current.Request.Cookies["arc_aaid"].Value);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            x = dt.Rows.Count;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetCustomerCountbyAguid", ex.Message);
        }
        return x;
    }
    public static int GetArchitectCount(SqlConnection conZP)
    {
        int x = 0;
        try
        {
            string query = " Select * from ArchitectDetails Where Status='Published'";
            SqlCommand cmd = new SqlCommand(query, conZP);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            x = dt.Rows.Count;
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetStudentCount", ex.Message);
        }
        return x;
    }





    public static decimal NoOfContacts(SqlConnection conZP)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from ContactUs Where  Status != 'Deleted'";
            SqlCommand cmd = new SqlCommand(query, conZP);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                decimal cnt = 0;
                decimal.TryParse(Convert.ToString(dt.Rows[0]["cntB"]), out cnt);
                x = cnt;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetTotalSales", ex.Message);
        }
        return x;
    }

    public static decimal TodaysOrder(SqlConnection conZP, string tDay)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from Orders Where  PaymentStatus = 'Paid' and Try_Convert(date, AddedOn)=@tDay";
            SqlCommand cmd = new SqlCommand(query, conZP);
            cmd.Parameters.AddWithValue("@tDay", SqlDbType.NVarChar).Value = tDay;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                decimal cnt = 0;
                decimal.TryParse(Convert.ToString(dt.Rows[0]["cntB"]), out cnt);
                x = cnt;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "NoOfEmailSubscribed", ex.Message);
        }
        return x;
    }

    public static decimal MonthsOrder(SqlConnection conZP, string mnth, string yr)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from Orders Where  PaymentStatus = 'Paid' and (Month(AddedOn) = @mnth and Year(AddedOn) = @yr)";
            SqlCommand cmd = new SqlCommand(query, conZP);
            cmd.Parameters.AddWithValue("@mnth", SqlDbType.NVarChar).Value = mnth;
            cmd.Parameters.AddWithValue("@yr", SqlDbType.NVarChar).Value = yr;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                decimal cnt = 0;
                decimal.TryParse(Convert.ToString(dt.Rows[0]["cntB"]), out cnt);
                x = cnt;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "NoOfEmailSubscribed", ex.Message);
        }
        return x;
    }




}

