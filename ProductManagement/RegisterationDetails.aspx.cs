using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductManagement
{
    public partial class RegisterationDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int output = 0;

            string name = txtName.Text;
            int age = Convert.ToInt32(txtAge.Text);
            long mobileNo = Convert.ToInt64(txtMobileNo.Text);
            string email = txtEmail.Text;

            DDL dl = new DDL();

            output = dl.RegisterUser(name, age, mobileNo, email);

            if (output > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: fnShowMessage('Record saved successfully'); ", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: fnShowMessage('Record already exists'); ", true);
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginInfo.aspx");
        }
    }
}