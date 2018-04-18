using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class publishnew : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    String ImagePath = null;
    String newTitle = null;
    String newcon = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "新闻管理->发布页";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.PicUpLoad.HasFile)
        {
                    this.PicUpLoad.SaveAs(Server.MapPath("~/image/newspic/") + PicUpLoad.FileName);
                    ImagePath = "image/newspic/" + PicUpLoad.FileName;
                    this.newimage.ImageUrl = ImagePath;
        }
              
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        newTitle = TextBox1.Text.ToString();
        newcon  = TextBox2.Text.ToString();
        String date = DateTime.Now.ToShortDateString();
        if(TextBox1.Text == null || TextBox2.Text == null)
        {
            Response.Write("<script language='javascript'>alert('信息提示：请输入新闻内容');</script>");
        }
        
        if (ImagePath == null)
        {
            ImagePath = "~/image/newspic/Default.jpg";
        }

        string strsql = "insert into News(newTitle,newDescription,newPic,Date,Enable) values('" + newTitle + "','" + newcon + "','" + ImagePath + "','" + date + "','1')";
        int insertResult = IDB.InsertReturnId(strsql);

        if (insertResult > 0)
        {
            Response.Write("<script language='javascript'>alert('发布成功，即将跳转至新闻管理首页');location.href='../admin_new.aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('信息提示：很遗憾，发布失败，请重新发布');</script>");
        }
    }
}