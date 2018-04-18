<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="Admin-index.aspx.cs" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_index.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="con-title">
        <div class="con-block">
            <img src="image/admin01.png" width="150" />
            <span class="case-name">今日任务</span>
            <span class="date"><asp:Label ID="Label3" runat="server"></asp:Label></span>
        </div>

        <div class="con-block">
            <img src="image/Admin02.png" width="150" />
            <span class="case-name">信息审批</span>
            <span class="date">
                <asp:Label ID="Label1" runat="server" ></asp:Label></span>
        </div>

        <div class="con-block">
            <img src="image/admin03.png" width="150" />
            <span class="case-name">用户反馈</span>
            <span class="date"><asp:Label ID="Label2" runat="server" ></asp:Label></span>
        </div>

                <div class="con-block">
            <img src="image/admin04.png"  width="150"/>
           <span class="case-name">系统报修</span>
            <span class="date"><asp:Label ID="Label4" runat="server" ></asp:Label></span>
        </div>
    </div>

</asp:Content>

