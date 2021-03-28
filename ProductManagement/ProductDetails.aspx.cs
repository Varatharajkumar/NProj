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
            List<Products> lstProducts = GetData();

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

            string file = "D:\\PDF\\file1.pdf";

            string directory = "D:\\PDF";
            if (!Directory.Exists(directory))
            {
                Directory.CreateDirectory(directory);
            }
            Utility.ExportToPdf(dt, file);


            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AddHeader("content-disposition", "attachment;filename=" + Path.GetFileName(file));
            Response.WriteFile(file);

            Response.End();
        }

    }
}