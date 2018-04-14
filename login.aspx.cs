using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_button_Click(object sender, EventArgs e)
    {
        string userName = username_login.Text;
        string password = userpwd_login.Text;

        string sql_selectUser = "select * from [User_Info] where userName = '"+userName+"' and userpwd = '"+password+"'";
        DataTable dt_user = IDB.GetTable(sql_selectUser);
        if (dt_user.Rows.Count !=1)
        {
            Response.Write("<script language='javascript'>alert('您尚未注册，即将跳转注册页面');location.href='../register.aspx';</script>");
        }
        else
        {
            UserInfo userInfo = new UserInfo();
            userInfo.UserID = dt_user.Rows[0]["userId"].ToString();
            userInfo.UserName = dt_user.Rows[0]["userName"].ToString();
            userInfo.RoleId = (int)dt_user.Rows[0]["roleID"];
            userInfo.Image = dt_user.Rows[0]["userPic"].ToString();
            userInfo.userNickname = dt_user.Rows[0]["userNickname"].ToString();

            LoginBase.SetSession(userInfo);
            Response.Redirect("~/index.aspx");
        }
    }
}