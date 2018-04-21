<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <head runat="server">
    
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>新用户注册</title>
        <link href="css/userregister.css" rel="stylesheet" />

    </head>

    <body>
        
        <form id="form1" runat="server">
        
            <div class="register-con"> </div>
                  
            <div class="register-disk">
              
                  <div class="register-title">
                   
                         <h2 style="float:left; line-height:50px;margin:0px;margin-left:120px;color:#767B7F">新用户注册Join In</h2>
                 
                   </div>
                  
                  <div class="register-table">
                      
                     <table class="table-con" border="0" cellspacing="0" cellpadding="0" width="450px" height="300px">
                          <tr>
                                <td width="100px" class="rowname"><span class="strike">*</span>用户名：</td>
                                
                                <td>
                                    
                                    <asp:TextBox ID="username" runat="server" Width="186px" placeholder="请在这里输入用户名~"></asp:TextBox>
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="用户名不为空" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">*用户名不为空!</asp:RequiredFieldValidator>

                                </td>
                          </tr>

                          <tr>
                               <td class="rowname"><span class="strike">*</span>密码：</td>
                               
                              <td>

                                  <asp:TextBox ID="userpsw" runat="server" Width="186px" TextMode="Password" placeholder="请在这里输入密码~" ></asp:TextBox>

                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userpsw" ErrorMessage="RequiredFieldValidator" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">*密码不能为空!</asp:RequiredFieldValidator>
                               </td>
                          </tr>

                          <tr>
                                <td class="rowname"><span class="strike">*</span>性别：</td>
                                
                                <td>

                                    <asp:RadioButtonList ID="usersex" runat="server"
                        RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="男">男</asp:ListItem>
                        <asp:ListItem Value="女">女</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                          </tr>

                          <tr>
                                <td class="rowname"><span class="strike">*</span>空间昵称：</td>
                                <td>
                                    <asp:TextBox ID="spacename" runat="server" Width="186px" placeholder="请在这里输入控件昵称~"></asp:TextBox>
                                </td>
                          </tr>
                          
                          <tr>
                                <td class="rowname">头像：</td>
                                <td>

                                    <asp:FileUpload ID="PicUpLoad" runat="server" Width="176px"/>
           
                                    <span style="color:red; width:50px">(支持.jpg,.png格式)</span>

                                </td>
                          </tr>

                          </table>

                          <asp:Button ID="register_button" runat="server" onclick="register_Click"
                        style="margin-left: 130px; margin-top:30px;" Text="提交" BackColor="#2A93D4" Width="260px" Font-Bold="True" ForeColor="White" Height="30px" />

                      </div>
                      <div class="login-register">
                         
                 
                       </div>
            </div>-->
        </form>
    </body>
</html>
