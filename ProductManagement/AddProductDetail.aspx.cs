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
            product.Name = txtProductName.Text;
            product.Category = txtProductCategory.Text;
            product.Quality = txtProductQuality.Text;
            product.Cost = Convert.ToInt64(txtProductCost.Text);
            product.NeedleInfo = txtNeedleInfo.Text;

            DDL dBCall = new DDL();
            output = dBCall.AddStudent(product);
            lblOutput.Visible = true;
            if (output > 0) {
                lblOutput.Text = "Record saved successfully";
                lblOutput.BackColor = System.Drawing.Color.Green;
                    }
            else
            {
                lblOutput.Text = "Record already exists with the Name - " + product.Name;
                lblOutput.BackColor = System.Drawing.Color.Red;
            }

            //AddStudent
        }


    }
}