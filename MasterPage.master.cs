﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        showTime.Text = "Date:"+ DateTime.Now.ToShortDateString();

        if (LoginBase.username != string.Empty)
        {
            RegisterUser.Visible = true;
            RegisterUser.Text = LoginBase.username;
            login_Button.Visible = false;
            goback.Visible = true;
        }
        if (DateTime.Now.Hour < 12)
        {
            hello.Text = " ,上午好~";
        }
        else if (DateTime.Now.Hour < 18)
        {
            hello.Text = " ,下午好~";
        }
        else
        {
            hello.Text = " ,晚上好~";
        }

       


    }
    protected void goback_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        RegisterUser.Visible = false;
        login_Button.Visible = true;
        goback.Visible = false;
    }

   
}
