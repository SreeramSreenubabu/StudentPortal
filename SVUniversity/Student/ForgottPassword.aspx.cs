using SVUniversityBLO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SVUniversity.Student
{
    public partial class ForgottPassword : System.Web.UI.Page
    {
        BusinessAccessLayer BAL = new BusinessAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnStudentForgotpasswordSubmit_Click(object sender, EventArgs e)
        {
            string DateOfBirth = string.Empty;
            string StudentFullName = string.Empty;

            DateOfBirth = txtdateofbirth.Text;
            StudentFullName = txtstudentfullname.Text;

            DataTable dt = BAL.StudentForgotPasword(DateOfBirth, StudentFullName);
            if (dt != null && dt.Rows.Count > 0)
            {
                ForgotUsernamepasswordMgs.Visible = true;

                //lblMsg2.Text = DateOfBirth;
                gv.Visible = true; 
                gv.DataSource = null;
                gv.DataSource = dt;
                gv.DataBind();

            }
        }


    }
}