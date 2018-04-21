using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class publishproduct : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "产品管理->产品发布";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String ImagePath = null;
        if (this.PicUpLoad.HasFile) //判断上传文件是否成功
        {
            this.PicUpLoad.SaveAs(Server.MapPath("/image/productpic/") + PicUpLoad.FileName);
            ImagePath = "/image/productpic/" + PicUpLoad.FileName;
            this.productimage.ImageUrl = ImagePath;
        }
        else
        {
            Response.Write("<script language='javascript'>alert('信息提示：照片为空');</script>");
        }
              
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string protitle = proname.Text;
        int probrand = Convert.ToInt32(brandlist.SelectedValue);
        int proclass = Convert.ToInt32(classlist.SelectedValue);
        string cost = procost.Text;
        string prodes = prodescription.Text;
        if (protitle == null || prodes == null)
        {
            Response.Write("<script language='javascript'>alert('信息提示：请输入产品内容');</script>");
        }
        string proimg = productimage.ImageUrl.ToString();

        string strsql = "insert into Products(productName,proDescription,productPic,cost,proclass,brand,Enable) values('"+protitle+"','"+prodes+"','"+proimg+"','"+cost+"',"+proclass+","+probrand+",'1')";
        int insertResult = IDB.InsertReturnId(strsql);

        if (insertResult > 0)
        {
            Response.Write("<script language='javascript'>alert('发布成功，即将跳转至产品管理首页');location.href='../admin_product.aspx';</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('信息提示：很遗憾，发布失败，请重新发布');</script>");
        }
    }
}