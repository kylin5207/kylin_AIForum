using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Master : System.Web.UI.MasterPage
{
    IDataBase IDB = new DataBase(); 
    protected void Page_Load(object sender, EventArgs e)
    {

        if (LoginBase.username == string.Empty)
        {
            Response.Write("<script language='javascript'>alert('您尚未登录或对话过期，请重新登录');location.href='../index.aspx';</script>");
        }
        if (LoginBase.RoleId != 1)
        {
            Response.Write("<script language='javascript'>alert('您不是管理员 无法访问管理页面');location.href='../index.aspx';</script>");
        }

        string userName = LoginBase.username;
        string userpic = LoginBase.Image;
        admin_name.Text = userName;
        admin_pic.ImageUrl = userpic;
    }
}
