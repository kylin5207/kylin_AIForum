<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mytrip.aspx.cs" Inherits="Mytrip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/mytrip.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/mytrip.jpg"  width="1350" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
        <table height="700" width="1000px" class="contable">
            <tr class="spacename">
                <td>
                    欢迎来到<asp:Label ID="spacename" runat="server" Text="" CssClass="space"></asp:Label>世界
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" Height="130px" 
        Width="1250px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 0px; margin-right: 0px"  CellSpacing="10" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            message:
                            <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
                            <br />
                            date:
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                            <br />
                            userName:
                            <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                            <br />
                            userPic:
                            <asp:Label ID="userPicLabel" runat="server" Text='<%# Eval("userPic") %>' />
<br />
                            <br />
                        </ItemTemplate>

                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT User_Message.message, User_Message.date, User_Info.userName, User_Info.userPic FROM User_Message INNER JOIN User_Info ON User_Message.TouserID = User_Info.userID WHERE (User_Message.userID = @userID) ORDER BY User_Message.date DESC">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

