using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchpro : System.Web.UI.Page
{
    public DataTable dt_new;
    IDataBase idb = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "产品管理->查找产品";
        dt_new = new DataTable();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string brand = brandlist.SelectedValue.ToString();
        string type = searchtype.SelectedValue.ToString();
        string search = searchcon.Text;

        string strsql = "select top(4) productID,productName,proDescription,productPic,cost,Enable from Products where brand = '"+brand+"' and proclass = '"+type+"' and productName"+" Like '%" + search + "%'";
        dt_new = idb.GetTable(strsql);
    }
}