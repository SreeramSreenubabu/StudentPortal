using SVUniversityDBLO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SVUniversityBLO
{
    public class BusinessAccessLayer : IBusinessAccessLayer
    {
        DataAccessLayer DAL = new DataAccessLayer();

        public int Student_Registration(string Student_Full_Name, string Father_Name, string Mother_Name, string Gender, string Date_Of_Birth,
            string Group_of_PG, string Year_Of_PG, string Contact_No, string FullAddress, string Email)
        {
            int ReturnVal = DAL.Student_Registration(Student_Full_Name, Father_Name, Mother_Name, Gender, Date_Of_Birth, Group_of_PG, Year_Of_PG, Contact_No, FullAddress, Email);
            return ReturnVal;
        }

        public DataTable StudentCheckLoginDetails(string StudentUsername, string Password)
        {
            DataTable dt = DAL.StudentCheckLoginDetails(StudentUsername, Password);
            return dt;
        }

        public DataTable StudentForgotPasword(string DateOfBirth, string StudentFullName)
        {
            DataTable dt = DAL.StudentForgotPasword(DateOfBirth, StudentFullName);
            return dt;
        }
    }
}
