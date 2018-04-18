﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage/AdminMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="AdminPage_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>亲爱的：<% LoginBase.username.ToString(); %><asp:Label ID="label_UserName" runat="server" Text="Label"></asp:Label></h2>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BorderStyle="Inset" DataKeyNames="userID" DataSourceID="SqlDataSource1" Height="585px">
        <AlternatingRowStyle BackColor="#666666" BorderColor="#CCCCCC" BorderStyle="Inset" />
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
            <asp:BoundField DataField="userSex" HeaderText="userSex" SortExpression="userSex" />
            <asp:BoundField DataField="userPic" HeaderText="userPic" SortExpression="userPic" />
            <asp:BoundField DataField="userNickname" HeaderText="userNickname" SortExpression="userNickname" />
            <asp:BoundField DataField="roleID" HeaderText="roleID" SortExpression="roleID" />
            <asp:BoundField DataField="rankNO" HeaderText="rankNO" SortExpression="rankNO" />
            <asp:CheckBoxField DataField="Enable" HeaderText="Enable" SortExpression="Enable" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT [userID], [userName], [userSex], [userPic], [userNickname], [roleID], [rankNO], [Enable] FROM [User_Info] ORDER BY [userID] DESC"></asp:SqlDataSource>
</asp:Content>
