<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="goQuestion.aspx.cs" Inherits="goQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/goQuestion.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/goquestion.jpg"  width="1350" height="300" style="margin-top:-57px; margin-left:0px"/>
    </div>
    <div class="contain">
        <table width="700" height="400" style="margin-left:300px;" cellspacing="0" cellpadding="0" rules="cols" border="1">
            <tr height="40">
                <td class="table-title">
                    问题名称：
                </td>
            </tr>

            <tr>
                <td>
                    <asp:TextBox ID="answertitle" placeholder="在此输入问题标题" runat="server" Height="24px" Width="579px" CssClass="answertitle"></asp:TextBox>
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    详细内容：
                </td>
            </tr>

            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="在此输入问题详情" Height="180px" TextMode="MultiLine" Width="579px" CssClass="answertitle"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Button ID="submitQuestion" runat="server"  Text="发布问题" BackColor="#4C80BA" Font-Bold="True" ForeColor="White" Height="26px" Width="113px" /> 
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

