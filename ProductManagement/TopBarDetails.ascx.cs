using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductManagement
{
    public partial class TopBarDetails : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblUser.Text = "Welcome " + Session["User"].ToString();


            string sumQuantity = Session["SumQuantity"].ToString();
            string needleCount = Session["NeedleCount"].ToString();
            Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: UpdateThresholdDetails(" + sumQuantity + "," + needleCount + "); ", true);

        }

        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("~/LoginInfo.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
    

            if(Session["NeedleCount"] == null)
            {
                Session["NeedleCount"] = Label2.Text;
            }
            else
            {
                Session["NeedleCount"] = Convert.ToInt64(Session["NeedleCount"]) + 1;
            }

            string sumQuantity = Session["SumQuantity"].ToString();
            string needleCount = Session["NeedleCount"].ToString();
            Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: UpdateThresholdDetails(" + sumQuantity + "," + needleCount + "); ", true);
         
            Response.Redirect("~/ProductDetails.aspx");
        }
    }
}