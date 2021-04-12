using System;
using System.Collections.Generic;
using System.Data;
using System.IO;

namespace ProductManagement
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/LoginInfo.aspx");
            }

            List<Products> lstProducts = GetData();

            if (!IsPostBack) {
                long sumQuantity = 0;
                foreach (Products p in lstProducts)
                {
                    sumQuantity += p.Quantity;

                }

                if (Session["NeedleCount"] == null)
                {
                    Session["NeedleCount"] = 1;
                }
                Session["SumQuantity"] = sumQuantity.ToString();
                Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript: UpdateThresholdDetails(" + sumQuantity + "); ", true);
            }
            GridView1.DataSource = lstProducts;
            GridView1.DataBind();
        }

        public static List<Products> GetData()
        {
            DDL dbCall = new DDL();
            List<Products> lstProducts = dbCall.GetStudent();
            return lstProducts;
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {



            List<Products> lstProducts = GetData();

            DataTable dt = Utility.ToDataTable(lstProducts);

            Utility.Export(dt);

            //string file = "D:\\PDF\\file1.pdf";

            //string directory = "D:\\PDF";
            //if (!Directory.Exists(directory))
            //{
            //    Directory.CreateDirectory(directory);
            //}
            //Utility.ExportToPdf(dt, file);


            //Response.Clear();
            //Response.ContentType = "application/octet-stream";
            //Response.AddHeader("content-disposition", "attachment;filename=" + Path.GetFileName(file));
            //Response.WriteFile(file);

            //Response.End();
        }

    }
}