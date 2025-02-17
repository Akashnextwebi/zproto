using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class ContactUs
{
    #region Contactus region
    public int Id { set; get; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Company { get; set; }

    public string Message { get; set; }
    public string EmailId { get; set; }
    public string ContactNo { get; set; }
    public DateTime AddedOn { set; get; }
    public string AddedIp { set; get; }
    public string Status { set; get; }
    public static List<ContactUs> GetAllContactUs(SqlConnection conZP)
    {
        List<ContactUs> contacts = new List<ContactUs>();
        try
        {
            string query = "select * from ContactUs where Status='Active' order by Id desc";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                contacts = (from DataRow dr in dt.Rows
                         select new ContactUs()
                         {
                             Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                             FirstName = Convert.ToString(dr["FirstName"]),
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllContactUs", ex.Message);
        }
        return contacts;
    }

    public static decimal NoOfContactUs(SqlConnection conMN)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from ContactUs Where Status != 'Deleted'";
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "NoOfContactUs", ex.Message);
        }
        return x;
    }

    public static List<ContactUs> GetTop10Requests(SqlConnection conZP)
    {
        List<ContactUs> contacts = new List<ContactUs>();
        try
        {
            string query = "select Top 10 * from ContactUs where Status='Active' order by Id desc";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                contacts = (from DataRow dr in dt.Rows
                            select new ContactUs()
                            {
                                Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                FirstName = Convert.ToString(dr["FirstName"]),
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllContactUs", ex.Message);
        }
        return contacts;
    }

    public static int InserContactUs(SqlConnection conZP, ContactUs contact)
    {
        int result = 0;
        try
        {
            string query = "Insert Into ContactUs (Status,LastName,Company,FirstName,Email,Phone,Message,AddedOn,AddedIp) values(@Status,@LastName,@Company,@FirstName,@Email,@Phone,@Message,@AddedOn,@AddedIp)";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                cmd.Parameters.AddWithValue("@FirstName", SqlDbType.NVarChar).Value = contact.FirstName;
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InserContactUs", ex.Message);
        }
        return result;
    }
    public static int DeleteContactUs(SqlConnection _con, ContactUs cat)
    {
        int result = 0;
        try
        {
            string query = "Update ContactUs Set Status=@Status Where Id=@Id";
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteContactUs", ex.Message);
        }
        return result;
    }


    public static string GetMessageById(SqlConnection conZP, string id)
    {
        string result = null;
        try
        {
            string cmdText = "select Message from ContactUs WHERE Id = @Id";
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
