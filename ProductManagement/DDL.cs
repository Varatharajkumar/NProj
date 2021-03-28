using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProductManagement
{
    public class DDL
    {
        SqlCommand cmd;
        SqlConnection con;

        public DDL()
        {
            string ConStr = ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
            con = new SqlConnection(ConStr);
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
        }

        public List<Products> GetStudent()
        {
            Products product = null;
            List<Products> lstProduct = new List<Products>();
            try
            {
                cmd.CommandText = "[dbo].[Product.GetProductDetails]";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    product = new Products();
                    product.Id = Convert.ToInt32(dr["Id"]);
                    product.Name = dr["Name"].ToString();
                    product.Category = dr["Category"].ToString();
                    product.Quality = dr["Quality"].ToString();
                    product.Cost = Convert.ToInt32(dr["Cost"]);
                    product.NeedleInfo = dr["NeedleInfo"].ToString();
                    lstProduct.Add(product);
                }
            }
            catch (Exception ex) { throw ex; }
            finally { con.Close(); }
            return lstProduct;
        }

        public int AddStudent(Products product)
        {
            int Count = 0;
            try
            {
                cmd.CommandText = "[dbo].[Product.AddProduct]";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Name", product.Name);
                cmd.Parameters.AddWithValue("@Category", product.Category);
                cmd.Parameters.AddWithValue("@Quality", product.Quality);
                cmd.Parameters.AddWithValue("@Cost", product.Cost);
                cmd.Parameters.AddWithValue("@NeedleInfo", product.NeedleInfo);
                con.Open();
                Count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex) { throw ex; }
            finally { con.Close(); }
            return Count;
        }
    }
}