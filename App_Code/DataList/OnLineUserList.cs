using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// OnLineUserList 的摘要说明
/// </summary>
public class OnLineUserList
{
    IDataBase DB = new DataBase();
    //public OnLineUserList()
    //{
    //    //
    //    // TODO: 在此处添加构造函数逻辑
    //    //

    //}
    public List<OnLineUserListDto> getOnlineUserList()
    {
        List<OnLineUserListDto> returnList = new List<OnLineUserListDto>();
        string sql = string.Format("select * from [User_Info]");
        DataTable UserTable = DB.GetTable(sql);
        for (int i = 0; i < UserTable.Rows.Count; i++)
        {
            OnLineUserListDto user = new OnLineUserListDto();
            user.UserId = int.Parse(UserTable.Rows[i]["UserId"].ToString());
            user.UserName = UserTable.Rows[i]["userName"].ToString();
            user.UserImg = UserTable.Rows[i]["userPic"].ToString();
            returnList.Add(user);
        }
        return returnList;
    }
}