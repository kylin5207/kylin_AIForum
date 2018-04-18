<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="goAnswer.aspx.cs" Inherits="goAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/goAnswer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="con-title">
        <img src="image/goanswer.jpg"  width="1350" height="300" style="margin-top:-57px; margin-left:0px"/>
    </div>
    <div class="contain">
        <table width="700" height="550" style="margin-left:300px;" cellspacing="0" cellpadding="0" rules="cols" border="1">
            <tr height="40">
                <td class="table-title">
                    问题详情：
                </td>
            </tr>

            <tr height="150">
                <td>
                    <asp:DataList ID="DataList1" runat="server" Height="200px" 
        Width="720px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center"  style="margin-left: 0px; margin-right: 0px" CellSpacing="10"  CssClass="answerlist" DataSourceID="SqlDataSource1" BorderStyle="None">
                        <ItemTemplate>
                            <div class="who-question">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("userPic") %>' Width="100" Height="100" />
                                <span style="display:inline-block; text-align:center; width:100px; height:30px; line-height:30px" >
                                    <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                                </span>
                            </div>
                            <div class="date">
                             <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                               </div>
                           <div class="question-block">
                               <span class="question-title">
                                    问题：<asp:Label ID="questionnameLabel" runat="server" Text='<%# Eval("questionname") %>' />
                                  
                                </span>
                               <br />
                               <div class="question-con">
                                    <asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
                               </div>
                               <br />
                               
                           </div>
                        </ItemTemplate>

                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT TOP (1) User_Info.userName, User_Info.userPic, User_Question.questionname, User_Question.questionContent, User_Question.datetime FROM User_Question INNER JOIN User_Info ON User_Info.userID = User_Question.userID WHERE (User_Question.userID = @userID) ORDER BY User_Question.datetime DESC">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    回答内容：
                </td>
            </tr>

            <tr height="190">
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="在此输入回答内容" Height="156px" TextMode="MultiLine" Width="579px" CssClass="answertitle"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="center">
                    <asp:Button ID="submitQuestion" runat="server"  Text="提交答案" BackColor="#4C80BA" Font-Bold="True" ForeColor="White" Height="26px" Width="113px" OnClick="submitQuestion_Click" /> 
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

