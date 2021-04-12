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
    public partial class DisplayUserDetails : System.Web.UI.Page  
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/LoginInfo.aspx");
            }
            DDL dl = new DDL();
           List<Users> lstUser = dl.GetUsers();

            rvDisplayUser.DataSource = lstUser;
            rvDisplayUser.DataBind();

        }

        public static List<Users> GetData()
        {
            DDL dbCall = new DDL();
            List<Users> lstUsers = dbCall.GetUsers();
            return lstUsers;
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            List<Users> lstProducts = GetData();

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