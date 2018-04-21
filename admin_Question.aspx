﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_Question.aspx.cs" Inherits="admin_Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_answer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
              <img style="vertical-align:central; float:left;" src="image/admin_QA01.png" width="30" height="30" />
              <span style="font-size:18px;margin-top:10px;float:left;">当前页面：问答管理—>问题审核</span>
           </div> 
    <div class="admin_table"> 
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="questionID" DataSourceID="SqlDataSource1" Width="1100px" Height="500px"  PageSize="4" AutoGenerateDeleteButton="True" HorizontalAlign="Left" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" RowStyle-Width="40px">
             <AlternatingRowStyle BackColor="#EDEDF8" HorizontalAlign="Center" />
            <Columns>
               
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" >
<HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>
                </asp:BoundField>
                <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" ReadOnly="True" InsertVisible="False" />
<asp:BoundField DataField="questionname" HeaderText="questionname" SortExpression="questionname"></asp:BoundField>
                
                <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                <asp:BoundField DataField="questionContent" HeaderText="questionContent" SortExpression="questionContent" />
                <asp:CheckBoxField DataField="Enable" HeaderText="Enable" SortExpression="Enable" ItemStyle-CssClass="enable" >
<ItemStyle CssClass="enable"></ItemStyle>
                </asp:CheckBoxField>
                 <asp:CommandField ShowEditButton="True" />
                 </Columns>
            <EditRowStyle BackColor="#3366FF" ForeColor="White" HorizontalAlign="Left" />
              <FooterStyle BackColor="#6699FF" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#9C9CF5" ForeColor="Black" Height="60px" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             <RowStyle BackColor="White" HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" DeleteCommand="DELETE FROM [User_Question] WHERE [questionID] = @questionID" InsertCommand="INSERT INTO [User_Question] ([userID], [questionname], [Enable], [datetime], [questionContent]) VALUES (@userID, @questionname, @Enable, @datetime, @questionContent)" SelectCommand="SELECT [userID], [questionID], [questionname], [Enable], [datetime], [questionContent] FROM [User_Question] ORDER BY [datetime] DESC" UpdateCommand="UPDATE [User_Question] SET [userID] = @userID, [questionname] = @questionname, [Enable] = @Enable, [datetime] = @datetime, [questionContent] = @questionContent WHERE [questionID] = @questionID">
            <DeleteParameters>
                <asp:Parameter Name="questionID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter Name="questionname" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
                <asp:Parameter Name="datetime" Type="DateTime" />
                <asp:Parameter Name="questionContent" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter Name="questionname" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
                <asp:Parameter Name="datetime" Type="DateTime" />
                <asp:Parameter Name="questionContent" Type="String" />
                <asp:Parameter Name="questionID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div><div class="con-title">
              <img style="vertical-align:central; float:left;" src="image/adminnew1.png" width="30" height="30" />
              <span style="font-size:18px;margin-top:10px;float:left;">当前页面：新闻修改</span>
           </div> 
    <div class="admin_table"> 
        
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="questionID" DataSourceID="SqlDataSource1" Width="1100px" Height="500px"  PageSize="4" AutoGenerateDeleteButton="True" HorizontalAlign="Left" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" RowStyle-Width="40px">
             <AlternatingRowStyle BackColor="#EDEDF8" HorizontalAlign="Center" />
            <Columns>
                
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" />
                <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" ReadOnly="True" InsertVisible="False" />
<asp:BoundField DataField="questionname" HeaderText="questionname" SortExpression="questionname"></asp:BoundField>
                <asp:CheckBoxField DataField="Enable" HeaderText="Enable" SortExpression="Enable" ItemStyle-CssClass="enable" />
                <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                <asp:BoundField DataField="questionContent" HeaderText="questionContent" SortExpression="questionContent" />
                 </Columns>
            <EditRowStyle BackColor="#3366FF" ForeColor="White" HorizontalAlign="Left" />
              <FooterStyle BackColor="#6699FF" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#9C9CF5" ForeColor="Black" Height="60px" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             <RowStyle BackColor="White" HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [newID] = @newID" InsertCommand="INSERT INTO [News] ([newTitle], [newDescription], [newPic], [Date], [Enable]) VALUES (@newTitle, @newDescription, @newPic, @Date, @Enable)" SelectCommand="SELECT * FROM [News] ORDER BY [Date] DESC" UpdateCommand="UPDATE [News] SET [newTitle] = @newTitle, [newDescription] = @newDescription, [newPic] = @newPic, [Date] = @Date, [Enable] = @Enable WHERE [newID] = @newID">
            <DeleteParameters>
                <asp:Parameter Name="newID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="newTitle" Type="String" />
                <asp:Parameter Name="newDescription" Type="String" />
                <asp:Parameter Name="newPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="newTitle" Type="String" />
                <asp:Parameter Name="newDescription" Type="String" />
                <asp:Parameter Name="newPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
                <asp:Parameter Name="newID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div><div class="con-title">
              <img style="vertical-align:central; float:left;" src="image/adminnew1.png" width="30" height="30" />
              <span style="font-size:18px;margin-top:10px;float:left;">当前页面：新闻修改</span>
           </div> 
    <div class="admin_table"> 
        
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="questionID" DataSourceID="SqlDataSource1" Width="1100px" Height="500px"  PageSize="4" AutoGenerateDeleteButton="True" HorizontalAlign="Left" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" RowStyle-Width="40px">
             <AlternatingRowStyle BackColor="#EDEDF8" HorizontalAlign="Center" />
            <Columns>
                
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" />
                <asp:BoundField DataField="questionID" HeaderText="questionID" SortExpression="questionID" ReadOnly="True" InsertVisible="False" />
<asp:BoundField DataField="questionname" HeaderText="questionname" SortExpression="questionname"></asp:BoundField>
                <asp:CheckBoxField DataField="Enable" HeaderText="Enable" SortExpression="Enable" ItemStyle-CssClass="enable" />
                <asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
                <asp:BoundField DataField="questionContent" HeaderText="questionContent" SortExpression="questionContent" />
                 </Columns>
            <EditRowStyle BackColor="#3366FF" ForeColor="White" HorizontalAlign="Left" />
              <FooterStyle BackColor="#6699FF" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#9C9CF5" ForeColor="Black" Height="60px" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             <RowStyle BackColor="White" HorizontalAlign="Center" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [newID] = @newID" InsertCommand="INSERT INTO [News] ([newTitle], [newDescription], [newPic], [Date], [Enable]) VALUES (@newTitle, @newDescription, @newPic, @Date, @Enable)" SelectCommand="SELECT * FROM [News] ORDER BY [Date] DESC" UpdateCommand="UPDATE [News] SET [newTitle] = @newTitle, [newDescription] = @newDescription, [newPic] = @newPic, [Date] = @Date, [Enable] = @Enable WHERE [newID] = @newID">
            <DeleteParameters>
                <asp:Parameter Name="newID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="newTitle" Type="String" />
                <asp:Parameter Name="newDescription" Type="String" />
                <asp:Parameter Name="newPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="newTitle" Type="String" />
                <asp:Parameter Name="newDescription" Type="String" />
                <asp:Parameter Name="newPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Enable" Type="Boolean" />
                <asp:Parameter Name="newID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
