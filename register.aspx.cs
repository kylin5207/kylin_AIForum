using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class register: System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    /*用于检测用户名是否已经存在的方法，返回bool*/
    bool checkUsername(string username)
    {
        bool exist = false;
        
        string sql_selectUser = "select * from [User_Info] where userName = '" + username + "'";
        
        DataTable dt_user = IDB.GetTable(sql_selectUser);
        
        if (dt_user.Rows.Count == 1)
        {
            exist = true;
        }

        return exist;
    }

    protected void register_Click(object sender, EventArgs e)
    {
        String ImagePath = null;
        string usernames = username.Text;
        if (checkUsername(usernames))
        {
            username.Text = null;
            userpsw.Text = null;

            ScriptManager.RegisterClientScriptBlock(this, typeof(string), "", "<script>alert('用户名已存在，请使用其他用户名');</script>", false);
        }
        else
        {
            bool fileIsValid = false;
            //如果确认了上传文件，则判断文件类型是否符合要求
            if (this.PicUpLoad.HasFile)
            {
                //获取上传文件的后缀
                String fileExtension = System.IO.Path.GetExtension(this.PicUpLoad.FileName).ToLower();
                String[] restrictExtension = { ".gif", ".jpg", ".bmp", ".png" };
                //判断文件类型是否符合要求
                for (int i = 0; i < restrictExtension.Length; i++)
                {
                    if (fileExtension == restrictExtension[i])
                    {
                        fileIsValid = true;
                    }
                }
                //如果文件类型符合要求,调用SaveAs方法实现上传,并显示相关信息
                if (fileIsValid == true)
                {
                    try
                    {
                        this.PicUpLoad.SaveAs(Server.MapPath("~/image/userpic") + PicUpLoad.FileName);
                        ImagePath = "~/image/userpic/" + PicUpLoad.FileName;
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script language='javascript'>alert('信息提示：很遗憾，图片上传失败');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('信息提示：图片格式不符合要求，请重新上传');</script>");
                }
            }
            if(ImagePath == null)
            {
                ImagePath = "~/image/userpic/default.png";
            }

            string strsql = "insert into User_Info(userName,userpwd,userSex,userNickname,userPic,roleID,Enable) values('" + username.Text + "','" + userpsw.Text + "','" + usersex.SelectedValue + "','" + spacename.Text + "','" + ImagePath + "','0','1')";
            
            int insertResult = IDB.InsertReturnId(strsql);

            if (insertResult > 0)
            {
                UserInfo userinfo = new UserInfo();
                userinfo.UserID = insertResult.ToString();
                userinfo.UserName = username.Text;
                userinfo.RoleId = 0;
                userinfo.Image = ImagePath;
                LoginBase.SetSession(userinfo);
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('信息提示：很遗憾，注册失败');</script>");
            }
        }
       
        
       
    }
    protected void UpLoad_Button_Click(object sender, EventArgs e)
    {
        
    }
}