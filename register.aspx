<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head runat="server">
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        
        <title>新用户注册</title>

        <link href="css/register.css" rel="stylesheet" />

    </head>

    <body>
        <form id="form1" runat="server">
            
            <div class="register-con"> </div>      
            
            <div class="register-disk">
              
                  <div class="register-title">
                   
                         <h2 style="float:left; line-height:50px;margin:0px;margin-left:180px;color:#767B7F">Register In</h2>
                 
                   </div>
                  
                  <div class="register-table">
                        
                      <table class="table-con">
                          
                          <tr>
                              <td>用户名</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>密码</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>确认密码</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>用户性别</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>用户头像</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>个人空间昵称</td>
                              <td></td>
                          </tr>

                          <tr>
                              <td>您最喜欢的话题</td>
                              <td></td>
                          </tr>
                      
                      </table>
                      
                      <div class="logname">
                        
                          <img src="image/username.png" class="login-img" width="35" height="35" />
                        
                          <asp:TextBox ID="username_login" placeholder="请输入用户名" runat="server" CssClass="username_login" ></asp:TextBox>
                  
                      </div>

                      <div class="logpwd">
                          <img src="image/userpwd.png" class="login-img" width="35" height="35" />

                          <asp:TextBox ID="userpwd_login"  placeholder="请输入密码" runat="server"  CssClass="userpwd_login" TextMode="Password"></asp:TextBox>
                      </div>

                      <div class="register">
                         
                           <asp:Button 
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
