using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(LoginBase.username.ToString() == "")
        {
            Response.Write("<script language='javascript'>alert('您尚未登录，即将前往登录页面');location.href='../login.aspx';</script>");
        }
    }
}