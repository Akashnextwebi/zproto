using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class QuoteRequests
{
    #region Contactus region
    public int Id { set; get; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Company { get; set; }
    public string Document { get; set; }
    public string Message { get; set; }
    public string EmailId { get; set; }
    public string ContactNo { get; set; }
    public DateTime AddedOn { set; get; }
    public string AddedIp { set; get; }
    public string Status { set; get; }
    public static List<QuoteRequests> GetAllQuoteRequests(SqlConnection conZP)
    {
        List<QuoteRequests> contacts = new List<QuoteRequests>();
        try
        {
            string query = "select * from QuoteRequests where Status='Active' order by Id desc";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                contacts = (from DataRow dr in dt.Rows
                            select new QuoteRequests()
                            {
                                Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                FirstName = Convert.ToString(dr["FirstName"]),
                                Document = Convert.ToString(dr["Document"]),
                                Company = Convert.ToString(dr["Company"]),
                                LastName = Convert.ToString(dr["LastName"]),
                                EmailId = Convert.ToString(dr["Email"]),
                                ContactNo = Convert.ToString(dr["Phone"]),
                                Message = Convert.ToString(dr["Message"]),
                                AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                AddedIp = Convert.ToString(dr["AddedIP"]),
                            }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllQuoteRequests", ex.Message);
        }
        return contacts;
    }

    public static decimal NoOfQuoteRequests(SqlConnection conMN)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from QuoteRequests Where Status != 'Deleted'";
            SqlCommand cmd = new SqlCommand(query, conMN);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                decimal cntB = 0;
                decimal.TryParse(Convert.ToString(dt.Rows[0]["cntB"]), out cntB);
                x = cntB;
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "NoOfQuoteRequests", ex.Message);
        }
        return x;
    }

    public static List<QuoteRequests> GetTop10Requests(SqlConnection conZP)
    {
        List<QuoteRequests> contacts = new List<QuoteRequests>();
        try
        {
            string query = "select Top 10 * from QuoteRequests where Status='Active' order by Id desc";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                contacts = (from DataRow dr in dt.Rows
                            select new QuoteRequests()
                            {
                                Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                FirstName = Convert.ToString(dr["FirstName"]),
                                Document = Convert.ToString(dr["Document"]),
                                Company = Convert.ToString(dr["Company"]),
                                LastName = Convert.ToString(dr["LastName"]),
                                EmailId = Convert.ToString(dr["Email"]),
                                ContactNo = Convert.ToString(dr["Phone"]),
                                Message = Convert.ToString(dr["Message"]),
                                AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                AddedIp = Convert.ToString(dr["AddedIP"]),
                            }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllQuoteRequests", ex.Message);
        }
        return contacts;
    }

    public static int InserQuoteRequests(SqlConnection conZP, QuoteRequests contact)
    {
        int result = 0;
        try
        {
            string query = "Insert Into QuoteRequests (Document,Status,LastName,Company,FirstName,Email,Phone,Message,AddedOn,AddedIp) values(@Document,@Status,@LastName,@Company,@FirstName,@Email,@Phone,@Message,@AddedOn,@AddedIp)";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                cmd.Parameters.AddWithValue("@FirstName", SqlDbType.NVarChar).Value = contact.FirstName;
                cmd.Parameters.AddWithValue("@Document", SqlDbType.NVarChar).Value = contact.Document;
                cmd.Parameters.AddWithValue("@Company", SqlDbType.NVarChar).Value = contact.Company;
                cmd.Parameters.AddWithValue("@LastName", SqlDbType.NVarChar).Value = contact.LastName;
                cmd.Parameters.AddWithValue("@Email", SqlDbType.NVarChar).Value = contact.EmailId;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                cmd.Parameters.AddWithValue("@Phone", SqlDbType.NVarChar).Value = contact.ContactNo;
                cmd.Parameters.AddWithValue("@Message", SqlDbType.NVarChar).Value = contact.Message;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.DateTime).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = CommonModel.IPAddress();
                conZP.Open();
                result = cmd.ExecuteNonQuery();
                conZP.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InserQuoteRequests", ex.Message);
        }
        return result;
    }
    public static int DeleteQuoteRequests(SqlConnection _con, QuoteRequests cat)
    {
        int result = 0;
        try
        {
            string query = "Update QuoteRequests Set Status=@Status Where Id=@Id";
            using (SqlCommand cmd = new SqlCommand(query, _con))
            {
                cmd.Parameters.AddWithValue("@Id", SqlDbType.NVarChar).Value = cat.Id;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Deleted";
                _con.Open();
                result = cmd.ExecuteNonQuery();
                _con.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteQuoteRequests", ex.Message);
        }
        return result;
    }


    public static string GetMessageById(SqlConnection conZP, string id)
    {
        string result = null;
        try
        {
            string cmdText = "select Message from QuoteRequests WHERE Id = @Id";
            using (SqlCommand sqlCommand = new SqlCommand(cmdText, conZP))
            {
                sqlCommand.Parameters.AddWithValue("@Id", id);
                conZP.Open();
                object obj = sqlCommand.ExecuteScalar();
                if (obj != DBNull.Value)
                {
                    result = obj.ToString();
                }
            }

        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetMessageById", ex.Message);
        }
        finally
        {
            if (conZP.State == ConnectionState.Open)
            {
                conZP.Close();
            }
        }

        return result;
    }

    #endregion
}
