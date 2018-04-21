<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="publishnew.aspx.cs" Inherits="publishnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/publishnew.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div class="con-title">
            <img style="vertical-align:central; float:left;" src="image/adminnew2.png" width="30" height="30" />
            <span style="font-size:18px;margin-top:10px;float:left;">当前页面：新闻发布</span>
        </div>
        <table class="publish-table" width="600" height="500" cellspacing="0" cellpadding="0" >
            <tr height="40">
                <td class="table-title">
                    新问标题
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" placeholder="请在此输入新闻标题" runat="server" Height="22px" Width="449px" CssClass="input"></asp:TextBox>
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    新闻内容
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="125px" Width="474px" CssClass="coninput"></asp:TextBox>
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    新闻图片
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="PicUpLoad" runat="server" Width="176px" CssClass="publishimage"/>
                    <asp:Button ID="Button2" runat="server" Text="确定上传" OnClick="Button2_Click" />
                    <asp:Image ID="newimage" runat="server" ImageUrl="~/image/upload.jpg" width="50" Height="50" CssClass="image"/>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="发布" CssClass="publishbtn" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

