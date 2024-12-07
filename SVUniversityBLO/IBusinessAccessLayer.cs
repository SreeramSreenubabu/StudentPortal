using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SVUniversityBLO
{
    interface IBusinessAccessLayer
    {
        int Student_Registration(string Student_Full_Name, string Father_Name, string Mother_Name, string Gender, string Date_Of_Birth,
           string Group_of_PG, string Year_Of_PG, string Contact_No, string FullAddress, string Email);
        DataTable StudentCheckLoginDetails(string StudentUsername, string Password);
        DataTable StudentForgotPasword(string DateOfBirth, string StudentFullName);

    }
}
