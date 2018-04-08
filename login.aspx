<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        
        <link href="css/login.css" rel="stylesheet" />
        
        <title>登录页面</title>
   
    </head>

    <body>
      
          <form id="form1" runat="server">
        
              <div class="login-con"> </div>
                  
              <div class="login-disk">
              
                  <div class="login-title">
                   
                         <h2 style="float:left; line-height:50px;margin:0px;margin-left:120px;color:#767B7F">系统登录login</h2>
                 
                   </div>
                  
                  <div class="login-table">
                      
                      <div class="logname">
                        
                          <img src="image/username.png" class="login-img" width="35" height="35" />
                        
                          <asp:TextBox ID="username_login" placeholder="请输入用户名" runat="server" CssClass="username_login" ></asp:TextBox>
                  
                      </div>

                      <div class="logpwd">
                          <img src="image/userpwd.png" class="login-img" width="35" height="35" />

                          <asp:TextBox ID="userpwd_login"  placeholder="请输入密码" runat="server"  CssClass="userpwd_login" TextMode="Password"></asp:TextBox>
                      </div>

                      <div class="login-register">
                         
                           <asp:Button onclick="Login_button_Click"
                        ID="Login_button" runat="server"
                        style="margin-left: 0px;" Text="登录" BackColor="#2A93D4" Width="252px" Font-Bold="True" ForeColor="White" Height="30px" />
                          <br />
                         
                          <div class="register-now"> 没有账号？<a href="register.aspx">立即注册</a>
                          </div>
                      </div>

                  </div>   
             </div>

        </form>

    </body>

</html>
