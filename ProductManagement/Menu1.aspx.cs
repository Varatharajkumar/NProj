using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductManagement
{
    public partial class Menu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<Products> lstProducts = GetData();
            GridView1.DataSource = lstProducts;
            GridView1.DataBind();
        }

        public static List<Products> GetData()
        {
            List<Products> lstProducts = new List<Products>
            {
                new Products{ Name="Product 1", Category="Category 1", Quality = Utility.Level.High.ToString(), Cost=500000},
                new Products{ Name="Product 2", Category="Category 1", Quality = Utility.Level.Medium.ToString(), Cost=250000},
                new Products{ Name="Product 3", Category="Category 2", Quality = Utility.Level.Low.ToString(), Cost=5000}

            };
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