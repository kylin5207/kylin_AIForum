<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/AdminMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="AdminPage_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>亲爱的：<% LoginBase.username.ToString(); %><asp:Label ID="label_UserName" runat="server" Text="Label"></asp:Label></h2>
    啊哈哈
</asp:Content>
