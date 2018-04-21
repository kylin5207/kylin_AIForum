using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_QA : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "问答管理页";
        Label1.Text = DateTime.Now.ToShortDateString();
        Label3.Text = DateTime.Now.ToShortDateString();
    }
}