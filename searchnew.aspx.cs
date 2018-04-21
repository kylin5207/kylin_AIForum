using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class searchnew : System.Web.UI.Page
{
    public DataTable dt_new;
    IDataBase idb = new DataBase();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "新闻管理->查找新闻";
        dt_new = new DataTable();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string type = searchtype.SelectedValue.ToString();
        string search = searchcon.Text;

        string strsql = "select top(4) * from News where " + type + " Like '%" + search + "%'";
        dt_new = idb.GetTable(strsql);
    }
}