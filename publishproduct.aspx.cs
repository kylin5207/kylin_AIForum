using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class publishproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "新闻管理->新闻发布";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String ImagePath = null;
        if (this.PicUpLoad.HasFile)
        {
            this.PicUpLoad.SaveAs(Server.MapPath("~/image/productpic/") + PicUpLoad.FileName);
            ImagePath = "image/productpic/" + PicUpLoad.FileName;
            this.productimage.ImageUrl = ImagePath;
        }
              
    }
}