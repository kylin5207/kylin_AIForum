<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="targetTrip.aspx.cs" Inherits="targetTrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/targetTrip.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/mytrip.jpg"  width="1380" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
        <table height="350px" width="1000px" class="contable" cellspacing="0" cellpadding="0">
            <tr class="spacename">
                <td>
                    <span class="space">欢迎来到<asp:Label ID="spacename" runat="server" Text=""><%= dt_user.Rows[0]["userNickname"] %></asp:Label>世界</span>
                    <span class="host">
                        <asp:Label ID="hostname" runat="server" Text="Label"></asp:Label>的留言板</span>
                </td>
            </tr>
            
            <tr height="200">
                <td>
                    <asp:TextBox ID="message" runat="server" TextMode="MultiLine" Width="500px" Height="140px" CssClass="leavemess" placeholder="在此输入留言内容"></asp:TextBox>
                    <span style="display:inline-block; float:left; margin-left:50px; margin-top:40px;">
                        <asp:ImageButton ID="ImageButton1" ImageUrl="image/message.png" Height="40" runat="server" OnClick="ImageButton1_Click"  /></span>
                </td>
            </tr>
        </table>
        </div>
</asp:Content>

