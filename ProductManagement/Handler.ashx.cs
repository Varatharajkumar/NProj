using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductManagement
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");

            ProcessQuery(context);
        }

        private void ProcessQuery(HttpContext context)
        {

            string output = string.Empty;
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;
            string actionName = Convert.ToString(request.QueryString["action"]);

            switch (actionName)
            {
                case "GetData":
                    {
                        output = "";
                        break;
                    }
            }


            ProcessResponse(output, response);
        }

        private void ProcessResponse(string output, HttpResponse response)
        {
            response.ContentType = "text/plain";
            response.Write(output);
            response.Flush();
            response.End();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}