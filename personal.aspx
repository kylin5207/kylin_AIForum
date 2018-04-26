<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="personal.aspx.cs" Inherits="personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/personal.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/personalbg.jpg"  width="1350" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>
    
    <div class="contain">
     <table width="700" height="500" class="con-table" border="1" cellpadding="0" cellspacing="0">
         <tr style="background-color:#4C80BA;height:40px;color:white;text-align:center">
             <td colspan="2">
                 我的资料
             </td>
         </tr>
         <tr>
             <td width="250px">用户ID：
             </td>
             <td width="450px">
                 <asp:Label ID="userIDlab" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>

         <tr>
             <td>用户名：
             </td>
             <td>
                 <asp:Label ID="userNamelab" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>

         <tr>
             <td>用户密码：
             </td>
             <td>
                 <asp:TextBox ID="pwdtext" runat="server"></asp:TextBox>&nbsp;&nbsp;
                 <asp:Button ID="updatepwdbtn" runat="server" Text="修改密码" OnClick="updatepwdbtn_Click" />
             </td>
         </tr>

         <tr>
             <td>用户性别：
             </td>
             <td>
                 <asp:Label ID="sexlab" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>

         <tr>
             <td>用户头像：
             </td>
             <td>
                 <asp:Image ID="userimg" runat="server" width="100px" Height="100px"/>
             </td>
         </tr>

         <tr>
             <td>用户空间名：
             </td>
             <td>
                 <asp:Label ID="userNicknamelab" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
     </table>
    
    </div>
</asp:Content>

