using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chatting : System.Web.UI.Page
{
    DataBase DB = new DataBase();
    public List<OnLineUserListDto> onLineUserList = new List<OnLineUserListDto>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (LoginBase.username.ToString() == "")
        {
            Response.Write("<script language='javascript'>alert('您尚未登录，即将前往登录页面');location.href='../login.aspx';</script>");
        }
        user_name.Text = LoginBase.username;
        UserPic.ImageUrl = LoginBase.Image;
        fromname.Text = LoginBase.username;

        getOnlineUserList();
    }
    public void getOnlineUserList()
    {
        string sql = string.Format("select * from [User_Info]");
        DataTable UserTable = DB.GetTable(sql);
        for (int i = 0; i < UserTable.Rows.Count; i++)
        {
            OnLineUserListDto user = new OnLineUserListDto();
            user.UserId = int.Parse(UserTable.Rows[i]["UserId"].ToString());
            user.UserName = UserTable.Rows[i]["userName"].ToString();
            user.UserImg = UserTable.Rows[i]["userPic"].ToString();
            onLineUserList.Add(user);
        }
    }
}