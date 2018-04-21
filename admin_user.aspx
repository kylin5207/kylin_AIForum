<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="admin_user.aspx.cs" Inherits="admin_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/admin_user.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
              <img style="vertical-align:central; float:left;" src="image/admin01.png" width="30" height="30" />
              <span style="font-size:18px;margin-top:10px;float:left;">当前页面：用户管理</span>
           </div>  
    <div class="admin_table"> 
         <br />
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="userID" DataSourceID="SqlDataSource1" Height="500px" Width="954px" PageSize="5" CellPadding="0" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Middle" PagerStyle-Height="30px" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Middle" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Height="24px" HorizontalAlign="Left">
              <AlternatingRowStyle BackColor="#EDEDF8" HorizontalAlign="Center" />
              <Columns>
                  
                  <asp:BoundField DataField="userID" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                  <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                  <asp:BoundField DataField="userpwd" HeaderText="userpwd" SortExpression="userpwd" />
                  <asp:BoundField DataField="userSex" HeaderText="userSex" SortExpression="userSex" />
                  <asp:ImageField DataImageUrlField="userPic" HeaderText="userPic" ControlStyle-Height="50px" ControlStyle-Width="50px" >
<ControlStyle Height="50px" Width="50px"></ControlStyle>
                  </asp:ImageField>
                  <asp:BoundField DataField="userNickname" HeaderText="userNickname" SortExpression="userNickname" />
                  <asp:BoundField DataField="roleID" HeaderText="roleID" SortExpression="roleID" />
                  <asp:CheckBoxField DataField="Enable" HeaderText="Enable" SortExpression="Enable" />
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

              </Columns>
              <EditRowStyle BackColor="#3366FF" ForeColor="White" HorizontalAlign="Left" />
              <FooterStyle BackColor="#6699FF" HorizontalAlign="Center" />
              <HeaderStyle BackColor="#9C9CF5" ForeColor="Black" Height="60px" />
              <PagerStyle BackColor="#9C9CF5" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="White" HorizontalAlign="Center" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" DeleteCommand="DELETE FROM [User_Info] WHERE [userID] = @userID" InsertCommand="INSERT INTO [User_Info] ([userName], [userpwd], [userSex], [userPic], [userNickname], [roleID], [Enable]) VALUES (@userName, @userpwd, @userSex, @userPic, @userNickname, @roleID, @Enable)" SelectCommand="SELECT [userID], [userName], [userpwd], [userSex], [userPic], [userNickname], [roleID], [Enable] FROM [User_Info] ORDER BY [userID]" UpdateCommand="UPDATE [User_Info] SET [userName] = @userName, [userpwd] = @userpwd, [userSex] = @userSex, [userPic] = @userPic, [userNickname] = @userNickname, [roleID] = @roleID, [Enable] = @Enable WHERE [userID] = @userID">
               <DeleteParameters>
                   <asp:Parameter Name="userID" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="userName" Type="String" />
                   <asp:Parameter Name="userpwd" Type="String" />
                   <asp:Parameter Name="userSex" Type="String" />
                   <asp:Parameter Name="userPic" Type="String" />
                   <asp:Parameter Name="userNickname" Type="String" />
                   <asp:Parameter Name="roleID" Type="Int32" />
                   <asp:Parameter Name="Enable" Type="Boolean" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="userName" Type="String" />
                   <asp:Parameter Name="userpwd" Type="String" />
                   <asp:Parameter Name="userSex" Type="String" />
                   <asp:Parameter Name="userPic" Type="String" />
                   <asp:Parameter Name="userNickname" Type="String" />
                   <asp:Parameter Name="roleID" Type="Int32" />
                   <asp:Parameter Name="Enable" Type="Boolean" />
                   <asp:Parameter Name="userID" Type="Int32" />
               </UpdateParameters>
           </asp:SqlDataSource>
       </div>
</asp:Content>

