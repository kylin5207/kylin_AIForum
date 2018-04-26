using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class personal : System.Web.UI.Page
{
    public DataTable dt_user = new DataTable(); 
    IDataBase IDB = new DataBase();
    string userId = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(LoginBase.username.ToString() == "")
        {
            Response.Write("<script language='javascript'>alert('您尚未登录，即将前往登录页面');location.href='../login.aspx';</script>");
        }
        this.Title = "个人中心";
        userId = LoginBase.ID.ToString();
        string sql_user = "select * from [User_Info] where userID = '" + userId + "'";
        dt_user = IDB.GetTable(sql_user);
        this.userIDlab.Text = dt_user.Rows[0]["userID"].ToString();
        this.userNamelab.Text = dt_user.Rows[0]["userName"].ToString();
        this.sexlab.Text = dt_user.Rows[0]["userSex"].ToString();
        this.userimg.ImageUrl = dt_user.Rows[0]["userPic"].ToString();
        this.userNicknamelab.Text = dt_user.Rows[0]["userNickname"].ToString();
    }
    protected void updatepwdbtn_Click(object sender, EventArgs e)
    {
        string pwd = pwdtext.Text;
        if(pwd == null || pwd.Trim() == "")
        {
            Response.Write("<script language='javascript'>alert('信息提示：还未输入新密码，请输入密码后重试');</script>");
        }
        else
        {
            string strsql = "update User_Info set userpwd ='"+pwd+"' where userID='"+userId+"'";
            try
            {
                IDB.Updata(strsql);
                Response.Write("<script language='javascript'>alert('密码修改成功，请牢记新密码');</script>");
            }
            catch
            {
                Response.Write("<script language='javascript'>alert('信息提示：密码修改失败，请稍后重试');</script>");
            }
            
        }
    }
}