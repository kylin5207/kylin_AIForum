<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_new.aspx.cs" Inherits="admin_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_new.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="con-title">
        <div class="con-block">
            <a href="publishnew.aspx"><img src="image/adminnew2.png" width="150" /></a>
            <span class="case-name">新闻发布</span>
            <span class="date"><asp:Label ID="Label3" runat="server"></asp:Label></span>
        </div>

        <div class="con-block">
            <a href="NewsUpdate.aspx"><img src="image/adminnew1.png" width="150" /></a>
            <span class="case-name">新闻修改</span>
            <span class="date">
                <asp:Label ID="Label1" runat="server" ></asp:Label></span>
        </div>

        <div class="con-block">
            <a href="searchnew.aspx"><img src="image/adminnew03.png" width="150" /></a>
            <span class="case-name">查找新闻</span>
            <span class="date"><asp:Label ID="Label2" runat="server" ></asp:Label></span>
        </div>

         
    </div>

</asp:Content>

