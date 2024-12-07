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
    public partial class StudentLogin : System.Web.UI.Page
    {
        public BusinessAccessLayer BAL = new BusinessAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnStudentLogin_Click(object sender, EventArgs e)
        {
            string StudentUsername = string.Empty;
            string Password = string.Empty;

            StudentUsername = txtstudentusername.Text;
            Password = txtpassword.Text;

            DataTable dt = BAL.StudentCheckLoginDetails(StudentUsername, Password);
            if (dt != null && dt.Rows.Count > 0)
            {
                LogindvMgs.Visible = true;
                lblMsg.Text = "Successfully Login";
                //LogindvMgs.Visible = false;
            }
        }
    }
}