using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductManagement
{
    public partial class LoginInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Session["User"] = txtUsername.Text;
            }
 
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Redirect("~/ProductDetails.aspx");
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegisterationDetails.aspx");
            
        }
    }
}