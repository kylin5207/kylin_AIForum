<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_QA.aspx.cs" Inherits="admin_QA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_QQ.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="con-title">
        <div class="con-block">
            <a href="admin_Question.aspx"><img src="image/admin_QA01.png" width="150" /></a>
            <span class="case-name">问题审核</span>
            <span class="date"><asp:Label ID="Label3" runat="server"></asp:Label></span>
        </div>

        <div class="con-block">
            <a href="admin_answer.aspx"><img src="image/admin_QA02.png" width="150" /></a>
            <span class="case-name">回答审核</span>
            <span class="date">
                <asp:Label ID="Label1" runat="server" ></asp:Label></span>
        </div>
    </div>
</asp:Content>

