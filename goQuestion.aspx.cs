using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class goQuestion : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    int userid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "提问首页";
        if (LoginBase.username.ToString() == "")
        {
            Response.Write("<script language='javascript'>alert('您尚未登录，即将前往登录页面');location.href='../login.aspx';</script>");
        }
        else
        {
            userid = Convert.ToInt32(LoginBase.ID.ToString());
        }
    }

    protected void submitQuestion_Click(object sender, EventArgs e)
    {
        String questitle = answertitle.Text;
        String quescon = TextBox1.Text;
        String date = DateTime.Now.ToShortDateString();
        if(questitle == null || quescon == null)
        {
            Response.Write("<script language='javascript'>alert('信息提示：请输入问题内容');</script>");
        }
        else
        {
            string strsql = "insert into User_Question(userID,questionname,questionContent,datetime,Enable) values('" + userid + "','" + questitle + "','" + quescon + "','" + date + "','1')";
            int insertResult = IDB.InsertReturnId(strsql);

            if (insertResult > 0)
            {
                Response.Write("<script language='javascript'>alert('发布成功，即将跳转至问答首页');location.href='../Question.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('信息提示：很遗憾，问题提交失败，请重新发布');</script>");
            }
        }
    }
}