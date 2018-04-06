using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// DataBase 的摘要说明
/// 数据库操作
/// </summary>
public class DataBase
{
    /// <summary>
    /// 数据操作   增删改查
    /// </summary>
	public class DataBase
	{
        static string connStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Connection"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        /// <summary>
        /// 返回表格  DataTable
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public DataTable GetTable(string sql)
        {
            DataTable dt = new DataTable();
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataAdapter dapt = new SqlDataAdapter(sql, conn);
            dapt.Fill(dt);
            conn.Close();
            return dt;
        }

        /// <summary>
        /// 获取第一行第一列并返回string类型
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public string GetString(string sql)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand comm = new SqlCommand(sql, conn);
            object obj = comm.ExecuteScalar();
            conn.Close();
            if (obj == null)
            {
                return "";
            }
            string data = obj.ToString();
            return data;
        }

        /// <summary>
        /// 获取表格行数  其实可以获取count(*)
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int GetTableRowsCount(string sql)
        {
            DataTable dt = new DataTable();
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlDataAdapter dapt = new SqlDataAdapter(sql, conn);
            dapt.Fill(dt);
            conn.Close();
            return dt.Rows.Count;
        }

        /// <summary>
        /// 删除语句
        /// </summary>
        /// <param name="sql"></param>
        public void Delete(string sql)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }

        /// <summary>
        /// 执行插入语句 并返回是否成功
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public bool Insert(string sql)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand comm = new SqlCommand(sql, conn);
            int a = comm.ExecuteNonQuery();
            conn.Close();
            if (a > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 执行插入并返回ID， SQL语句中只写插入语句
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public int InsertReturnId(string sql)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            sql += " Select @@Identity";
            SqlCommand comm = new SqlCommand(sql, conn);
            int Id = Convert.ToInt32(comm.ExecuteScalar());
            conn.Close();
            return Id;
        }

        /// <summary>
        /// 更新操作
        /// </summary>
        /// <param name="sql"></param>
        public void Updata(string sql)
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.ExecuteNonQuery();
            conn.Close();
        }
	}
}