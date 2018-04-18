using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class goAnswer : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    int userid = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "回答问题";
        if (LoginBase.username.ToString() == "")
        {
            Response.Write("<script language='javascript'>alert('您尚未登录，即将前往登录页面');location.href='../login.aspx';</script>");
        }

        userid = Convert.ToInt32(LoginBase.ID.ToString());
    }
    protected void submitQuestion_Click(object sender, EventArgs e)
    {
        String answer = TextBox1.Text;
        String date = DateTime.Now.ToShortDateString();
        if(date == null)
        {
            Response.Write("<script language='javascript'>alert('信息提示：请输入回答内容');</script>");
        }
        else
        {
            
          /*  string strsql = "insert into User_Answer(userID,answer,datetime,Enable) values('" + userid + "','" + answer + "','" +  + "','" + date + "','1')";
            int insertResult = IDB.InsertReturnId(strsql);

            if (insertResult > 0)
            {
                Response.Write("<script language='javascript'>alert('回答成功，即将跳转至问答首页');location.href='../Question.aspx';</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('信息提示：很遗憾，回答提交失败，请重新发布');</script>");
            }
           * */
        }
    }
}