using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    IDataBase IDB = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_button_Click(object sender, EventArgs e)
    {
        string userName = username_login.Text;
        string password = userpwd_login.Text;

        string sql_selectUser = "";
        
    }
}