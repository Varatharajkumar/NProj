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
                    product.PartyName = dr["PartyName"].ToString();
                    product.MaterialType = dr["MaterialType"].ToString();
                    product.Color = dr["Color"].ToString();
                    product.ProductCost = Convert.ToInt64(dr["ProductCost"]);
                    product.Quantity = Convert.ToInt64(dr["Quantity"]);
                    product.CreatedDate = dr["CreatedDate"].ToString();
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
                cmd.Parameters.AddWithValue("@PartyName", product.PartyName);
                cmd.Parameters.AddWithValue("@MaterialType", product.MaterialType);
                cmd.Parameters.AddWithValue("@Color", product.Color);
                cmd.Parameters.AddWithValue("@ProductCost", product.ProductCost);
                cmd.Parameters.AddWithValue("@Quantity", product.Quantity);
                con.Open();
                Count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex) { throw ex; }
            finally { con.Close(); }
            return Count;
        }


        public int RegisterUser(string name, int age, long mobileNo, string email)
        {
            int Count = 0;
            try
            {
                cmd.CommandText = "[dbo].[Product.RegisterUser]";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Age", age);
                cmd.Parameters.AddWithValue("@MobileNo", mobileNo);
                cmd.Parameters.AddWithValue("@Email", email);
                con.Open();
                Count = cmd.ExecuteNonQuery();
            }
            catch (Exception ex) { throw ex; }
            finally { con.Close(); }
            return Count;
        }

        public List<Users> GetUsers()
        {
            Users user = null;
            List<Users> lstUsers = new List<Users>();
            try
            {
                cmd.CommandText = "[dbo].[Product.GetUserDetails]";
                cmd.Parameters.Clear();
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    user = new Users();
                    user.Id = Convert.ToInt32(dr["Id"]);
                    user.Name = dr["Name"].ToString();
                    user.Age = Convert.ToInt32(dr["Age"].ToString());
                    user.MobileNo = Convert.ToInt64(dr["MobileNo"].ToString());
                    user.Email = dr["Email"].ToString();
                    lstUsers.Add(user);
                }
            }
            catch (Exception ex) { throw ex; }
            finally { con.Close(); }
            return lstUsers;
        }

    }
}