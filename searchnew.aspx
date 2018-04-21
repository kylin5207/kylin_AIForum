<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="searchnew.aspx.cs" Inherits="searchnew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/searchnew.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="con-title">
            <img style="vertical-align:central; float:left;" src="image/adminnew03.png" width="30" height="30" />
            <span style="font-size:18px;margin-top:10px;float:left;">当前页面：查找新闻</span>
        </div>
        <div style="height:50px; margin-top:10px;margin-left:350px;">
            <span style="margin-left:100px;margin-right:50px;">按种类查找：
                <asp:DropDownList ID="searchtype" runat="server">
                    <asp:ListItem Value="newTitle">新闻标题</asp:ListItem>
                    <asp:ListItem Value="newDesciption">新闻内容</asp:ListItem>
               </asp:DropDownList>
            </span>

            <span style="display:inline-block;position:relative">
                <asp:TextBox ID="searchcon" runat="server" Width="215px"></asp:TextBox>
                <img style="position:absolute ;vertical-align:central; margin-left:-27px;margin-top:1px" src="image/search.png" width="21px" height="21px"/>
                &nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server" Text="查找" CssClass="searchbtn" OnClick="Button1_Click" />
        </div>
        <div class="shownew">
            <table style="overflow:hidden; text-align:center" cellpadding="0" cellspacing="0" border="1">
                <thead style="background-color:#9C9CF5; height:60px;">
                    <th width="40px" height="60">newID</th>
                    <th width="100px">newTitle</th>
                    <th style="width:670px">newDescription</th>
                    <th width="100px">newPic</th>
                    <th width="100px">newDate</th>
                    <th width="40px">Enable</th>

                </thead>
                <tbody>
                    <%
                        if(dt_new.Rows.Count > 0)
                        { 
                            for(int i = 0; i < dt_new.Rows.Count; i++)
                            {  
                    
                    %>
                    <tr>
                        <td><%=dt_new.Rows[i]["newID"] %></td>
                        <td style="overflow:hidden;width:200px"><%=dt_new.Rows[i]["newTitle"] %></td>
                        <td style="overflow:hidden;width:500px"><%=dt_new.Rows[i]["newDescription"] %></td>
                        <td style="padding:10px">
                            <img src='<%=dt_new.Rows[i]["newPic"] %>' Width="80" Height="80" /></td>
                        <td><%=dt_new.Rows[i]["Date"] %></td>
                        <td><%=dt_new.Rows[i]["Enable"] %></td>
                      
                                   
                    </tr>
                    <%
                            }    
                        }
                     %>
                </tbody>
            </table>
        </div>


</asp:Content>

