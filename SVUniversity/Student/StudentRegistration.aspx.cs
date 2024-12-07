using SVUniversityBLO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SVUniversity
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        BusinessAccessLayer BAL = new BusinessAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string Student_Full_Name = string.Empty;
            string Father_Name = string.Empty;
            string Mother_Name = string.Empty;
            string Gender = string.Empty;
            string Date_Of_Birth = string.Empty;
            string Group_of_PG = string.Empty;
            string Year_Of_PG = string.Empty;
            string Contact_No = string.Empty;
            string FullAddress = string.Empty;
            string Email = string.Empty;

            Student_Full_Name = txtstudentfullname.Text.ToUpper();
            Father_Name = txtfathername.Text.ToUpper();
            Mother_Name = txtmothername.Text.ToUpper();
            Gender = rbtgender.Text;
            Date_Of_Birth = txtdateofbirth.Text;
            Group_of_PG = ddlgroupofPG.Text.ToUpper();
            Year_Of_PG = ddlyearofPG.Text;
            Contact_No = txtcontactno.Text;
            FullAddress = txtfulladdress.Text;
            Email = txtemail.Text;

            int RetVal = BAL.Student_Registration(Student_Full_Name, Father_Name, Mother_Name, Gender, Date_Of_Birth, Group_of_PG, Year_Of_PG, Contact_No, FullAddress, Email);

            if (RetVal > 0 && RetVal != 0)
            {
                RegSuccessMgs.Visible = true;
                lblRegSuccessMgsMsg.Visible = true;
                HyperlinkRedirectStudentToLoginPage.Visible = true;

            }

        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {            
            Response.Redirect("~/Student/StudentRegistration.aspx");
        }
    }
}