<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mytrip.aspx.cs" Inherits="Mytrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/mytrip.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/mytrip.jpg"  width="1350" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
        <table height="1010" width="1000px" class="contable" cellspacing="0" cellpadding="0">
            <tr class="spacename">
                <td>
                    <span class="space">欢迎来到<asp:Label ID="spacename" runat="server" Text=""></asp:Label>世界</span>
                    <span class="host">
                        <asp:Label ID="hostname" runat="server" Text="Label"></asp:Label>的留言板</span>
                </td>
            </tr>
            

            <tr height="700">
                <td>
                    <asp:DataList ID="DataList1" runat="server" Height="700px" 
        Width="1250px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 0px; margin-right: 0px"  CellSpacing="10" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
                        <FooterTemplate>
                       <div style="margin:0px; padding:0px;width:1200px; text-align:center;background-color:#D5DCE1">
                         当前第<asp:Label ID="labCurrentPage" runat="server"></asp:Label>页
                        /
                        共<asp:Label ID="labPageCount" runat="server"></asp:Label>页&nbsp; &nbsp;
                        <asp:LinkButton ID="lnkbtnFirst" runat="server" CommandName="first" Font-Underline="False" ForeColor="#000000"  >首页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnFront" runat="server" CommandName="pre" Font-Underline="False" ForeColor="#000000" >上一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnNext" runat="server" CommandName="next" Font-Underline="False" ForeColor="#000000">下一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnLast" runat="server" CommandName="last" Font-Underline="False" ForeColor="#000000" >尾页</asp:LinkButton>
                        &nbsp;&nbsp; 跳转至：<asp:TextBox ID="txtPage" runat="server" Height="21px" Width="35px"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CommandName="search" Height="19px" Text="GO" />
                        </div>
                 </FooterTemplate>

                         <ItemTemplate>
                            <div class="message-user">
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("userPic") %>' Width="100" Height="100" />
                              <span class="messagecome"><asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' /></span>
                            </div>
                             <div>
                            
                            <div class="message-con">
                                <span class="message"><asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' /></span> 
                                <span class="date"><asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' /></span>
                            </div>
                        </ItemTemplate>

                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT User_Message.message, User_Message.date, User_Info.userName, User_Info.userPic FROM User_Message INNER JOIN User_Info ON User_Message.userID = User_Info.userID WHERE (User_Message.TouserID = @userID) ORDER BY User_Message.date DESC">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>

            <tr class="wanna">
                <td>
                    我要留言:
                </td>
            </tr>
            
            <tr height="100">
                <td>
                    <asp:TextBox ID="message" runat="server" TextMode="MultiLine" Width="500px" Height="70px" CssClass="leavemess" placeholder="在此输入留言内容"></asp:TextBox>
                    <span style="display:inline-block; float:left; margin-left:50px; margin-top:20px;">
                        <asp:ImageButton ID="ImageButton1" ImageUrl="image/message.png" Height="40" runat="server" OnClick="ImageButton1_Click" /></span>
                </td>
            </tr>

            <tr class="wanna">
                <td>
                    看看别人:
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="searchtext" runat="server" TextMode="SingleLine" Width="399px" CssClass="search" placeholder="在此输入用户名"></asp:TextBox>
                    <span style="display:inline-block; float:left; margin-left:110px;">
                         <asp:ImageButton ID="ImageButton2" ImageUrl="image/searchuser.png" Height="40" runat="server" OnClick="ImageButton2_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

