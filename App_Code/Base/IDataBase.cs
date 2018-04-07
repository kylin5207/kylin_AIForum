using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// IDataBase 的摘要说明
/// </summary>
public interface IDataBase
{
	/// <summary>
    /// 返回表格  DataTable
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    DataTable GetTable(string sql);


    /// <summary>
    /// 获取第一行第一列并返回string类型
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    string GetString(string sql);


    /// <summary>
    /// 获取表格行数  其实可以获取count(*)
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    int GetTableRowsCount(string sql);

    /// <summary>
    /// 删除语句
    /// </summary>
    /// <param name="sql"></param>
    void Delete(string sql);

    /// <summary>
    /// 执行插入语句 并返回是否成功
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    bool Insert(string sql);

    /// <summary>
    /// 执行插入并返回ID， SQL语句中只写插入语句
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    int InsertReturnId(string sql);

    /// <summary>
    /// 更新操作
    /// </summary>
    /// <param name="sql"></param>
    void Updata(string sql);


}