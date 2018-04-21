using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productupdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "产品管理->产品修改";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}