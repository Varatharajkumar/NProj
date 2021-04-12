using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductManagement
{
    public partial class AddProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/LoginInfo.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int output = 0;
            Products product = new Products();
            product.PartyName = txtPartyName.Text;
            product.MaterialType = txtMaterialType.Text;
            product.Color = txtColor.Text;
            product.ProductCost = Convert.ToInt64(txtProductCost.Text);
            product.Quantity = Convert.ToInt64(txtQuantity.Text);

            DDL dBCall = new DDL();
            output = dBCall.AddStudent(product);
            lblOutput.Visible = true;
            if (output > 0) {
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: fnShowMessage('Record saved successfully'); ", true);
                Response.Redirect("~/ProductDetails.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: fnShowMessage('Record already exists with the PartyName'); ", true);
            }

            //AddStudent
        }


    }
}