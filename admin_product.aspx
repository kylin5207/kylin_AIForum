﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_product.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <div class="con-block">
            <a href="publishproduct.aspx"><img src="image/productadmin01.png" width="150" /></a>
            <span class="case-name">产品发布</span>
            <span class="date"><asp:Label ID="Label3" runat="server"></asp:Label></span>
        </div>

        <div class="con-block">
            <a href="productupdate.aspx"><img src="image/adminproduct02.png" width="150" /></a>
            <span class="case-name">产品修改</span>
            <span class="date">
                <asp:Label ID="Label1" runat="server" ></asp:Label></span>
        </div>

        <div class="con-block">
            <a href="searchpro.aspx"><img src="image/adminnew03.png" width="150" /></a>
            <span class="case-name">查找产品</span>
            <span class="date"><asp:Label ID="Label2" runat="server" ></asp:Label></span>
        </div>

         
    </div>
</asp:Content>

