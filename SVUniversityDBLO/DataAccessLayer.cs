using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography.X509Certificates;


namespace SVUniversityDBLO
{
    public class DataAccessLayer : IDataAccessLayer
    {
        public string ConnectingString;
        public DataAccessLayer()
        {
            ConnectingString = WebConfigurationManager.ConnectionStrings["SVUDBConn"].ConnectionString;
        }

        public int Student_Registration(string Student_Full_Name, string Father_Name, string Mother_Name, string Gender, string Date_Of_Birth,
              string Group_of_PG, string Year_Of_PG, string Contact_No, string FullAddress, string Email)
        {
            int effected_Rows = 0;
            try
            {

                using (SqlConnection Connection = new SqlConnection(ConnectingString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        Connection.Open();
                        cmd.Connection = Connection;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = AllStoreProcedures.USP_Student_Registration;
                        cmd.Parameters.Add("@Student_Full_Name", SqlDbType.VarChar, 100).Value = Student_Full_Name;
                        cmd.Parameters.Add("@Father_Name", SqlDbType.VarChar, 100).Value = Father_Name;
                        cmd.Parameters.Add("@Mother_Name", SqlDbType.VarChar, 100).Value = Mother_Name;
                        cmd.Parameters.Add("@Gender", SqlDbType.VarChar, 10).Value = Gender;
                        cmd.Parameters.Add("@Date_Of_Birth", SqlDbType.VarChar, 20).Value = Date_Of_Birth;
                        cmd.Parameters.Add("@Group_of_PG", SqlDbType.VarChar, 10).Value = Group_of_PG;
                        cmd.Parameters.Add("@Year_Of_PG", SqlDbType.VarChar, 10).Value = Year_Of_PG;
                        cmd.Parameters.Add("@Contact_No", SqlDbType.VarChar, 20).Value = Contact_No;
                        cmd.Parameters.Add("@FullAddress", SqlDbType.VarChar, 300).Value = FullAddress;
                        cmd.Parameters.Add("@Email", SqlDbType.VarChar, 100).Value = Email;
                        effected_Rows = cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return effected_Rows;
        }


        public DataTable StudentCheckLoginDetails(string StudentUsername, string Password)
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection Connection = new SqlConnection(ConnectingString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        Connection.Open();
                        cmd.Connection = Connection;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = AllStoreProcedures.USP_StudentCheckLoginDetails;
                        cmd.Parameters.Add("@StudentUsername", SqlDbType.VarChar, 100).Value = StudentUsername;
                        cmd.Parameters.Add("@Password", SqlDbType.VarChar, 20).Value = Password;
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        adapter.Fill(dt);
                    }
                }

            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return dt;
        }


        public DataTable StudentForgotPasword(string DateOfBirth, string StudentFullName)
        {
            DataTable dt = new DataTable();

            try
            {
                using (SqlConnection Connection = new SqlConnection(ConnectingString))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        Connection.Open();
                        cmd.Connection = Connection;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = AllStoreProcedures.USP_StudentForgotPassword;
                        cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar, 20).Value = DateOfBirth;
                        cmd.Parameters.Add("@StudentFullName", SqlDbType.VarChar, 100).Value = StudentFullName;
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        adapter.Fill(dt);
                    }
                }

            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }

            return dt;
        }


    }
}
