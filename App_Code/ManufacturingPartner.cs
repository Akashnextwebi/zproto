using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class ManufacturingPartner
{
    #region ManufacturingPartner region
    public int Id { set; get; }
    public string FullName { get; set; }
    public string Document { get; set; }
    public string Company { get; set; }
    public string AboutProject { get; set; }
    public string EmailId { get; set; }
    public string ContactNo { get; set; }
    public DateTime AddedOn { set; get; }
    public string AddedIp { set; get; }
    public string Status { set; get; }
    public static List<ManufacturingPartner> GetAllManufacturingPartner(SqlConnection conZP)
    {
        List<ManufacturingPartner> contacts = new List<ManufacturingPartner>();
        try
        {
            string query = "select * from ManufacturingPartner where Status='Active' order by Id desc";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                contacts = (from DataRow dr in dt.Rows
                            select new ManufacturingPartner()
                            {
                                Id = Convert.ToInt32(Convert.ToString(dr["Id"])),
                                FullName = Convert.ToString(dr["FullName"]),
                                Company = Convert.ToString(dr["Company"]),
                                Document = Convert.ToString(dr["Document"]),
                                EmailId = Convert.ToString(dr["Email"]),
                                ContactNo = Convert.ToString(dr["Phone"]),
                                AboutProject = Convert.ToString(dr["AboutProject"]),
                                AddedOn = Convert.ToDateTime(Convert.ToString(dr["AddedOn"])),
                                AddedIp = Convert.ToString(dr["AddedIP"]),
                            }).ToList();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAllManufacturingPartner", ex.Message);
        }
        return contacts;
    }
    public static decimal NoOfManufacturingPartner(SqlConnection conZP)
    {
        decimal x = 0;
        try
        {
            string query = " Select Count(Id) as cntB from ManufacturingPartner Where Status != 'Deleted'";
            SqlCommand cmd = new SqlCommand(query, conZP);
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "NoOfManufacturingPartner", ex.Message);
        }
        return x;
    }
    public static int InserManufacturingPartner(SqlConnection conZP, ManufacturingPartner contact)
    {
        int result = 0;
        try
        {
            string query = "Insert Into ManufacturingPartner (Status,Document,Company,FullName,Email,Phone,AboutProject,AddedOn,AddedIp) values(@Status,@Document,@Company,@FullName,@Email,@Phone,@AboutProject,@AddedOn,@AddedIp)";
            using (SqlCommand cmd = new SqlCommand(query, conZP))
            {
                cmd.Parameters.AddWithValue("@FullName", SqlDbType.NVarChar).Value = contact.FullName;
                cmd.Parameters.AddWithValue("@Company", SqlDbType.NVarChar).Value = contact.Company;
                cmd.Parameters.AddWithValue("@Document", SqlDbType.NVarChar).Value = contact.Document;
                cmd.Parameters.AddWithValue("@Email", SqlDbType.NVarChar).Value = contact.EmailId;
                cmd.Parameters.AddWithValue("@Status", SqlDbType.NVarChar).Value = "Active";
                cmd.Parameters.AddWithValue("@Phone", SqlDbType.NVarChar).Value = contact.ContactNo;
                cmd.Parameters.AddWithValue("@AboutProject", SqlDbType.NVarChar).Value = contact.AboutProject;
                cmd.Parameters.AddWithValue("@AddedOn", SqlDbType.DateTime).Value = TimeStamps.UTCTime();
                cmd.Parameters.AddWithValue("@AddedIp", SqlDbType.NVarChar).Value = CommonModel.IPAddress();
                conZP.Open();
                result = cmd.ExecuteNonQuery();
                conZP.Close();
            }
        }
        catch (Exception ex)
        {
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "InserManufacturingPartner", ex.Message);
        }
        return result;
    }
    public static int DeleteManufacturingPartner(SqlConnection _con, ManufacturingPartner cat)
    {
        int result = 0;
        try
        {
            string query = "Update ManufacturingPartner Set Status=@Status Where Id=@Id";
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "DeleteManufacturingPartner", ex.Message);
        }
        return result;
    }


    public static string GetAboutProjectById(SqlConnection conZP, string id)
    {
        string result = null;
        try
        {
            string cmdText = "select AboutProject from ManufacturingPartner WHERE Id = @Id";
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
            ExceptionCapture.CaptureException(HttpContext.Current.Request.Url.PathAndQuery, "GetAboutProjectById", ex.Message);
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
