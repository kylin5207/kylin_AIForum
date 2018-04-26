using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class targetTrip : System.Web.UI.Page
{
    string targetusername = null;
    public DataTable dt_user = new DataTable();
    int toUserid = 0;
    IDataBase IDB = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        targetusername = Request.QueryString["targetuser"];
        this.Title = targetusername+"的留言板";
        hostname.Text = targetusername;
        string sql_user = "select * from [User_Info] where userName = '"+targetusername+"'";
        dt_user = IDB.GetTable(sql_user);
        toUserid = Convert.ToInt32(dt_user.Rows[0]["userID"].ToString());
        //string xxx = dt_user
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string usermessage = message.Text;
        string date = DateTime.Now.ToLocalTime().ToString();
        int userid = Convert.ToInt32(LoginBase.ID.ToString());
        string strsql = "insert into User_Message(userID,TouserID,message,date,Enable) values('"+userid+"','"+toUserid+"','"+usermessage+"','"+date+"','1')";

        int insertResult = IDB.InsertReturnId(strsql);
        if (insertResult > 0)
        {
            Response.Write("<script language='javascript'>alert('留言成功，即将跳转至个人留言板');location.href='../Mytrip.aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('信息提示：很遗憾，留言失败');</script>");
        }
    }
}