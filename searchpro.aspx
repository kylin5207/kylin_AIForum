<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="searchpro.aspx.cs" Inherits="searchpro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/productsearch.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="con-title">
            <img style="vertical-align:central; float:left;" src="image/adminnew03.png" width="30" height="30" />
            <span style="font-size:18px;margin-top:10px;float:left;">当前页面：查找产品</span>
        </div>
        <div style="height:50px; margin-top:10px;margin-left:350px;">
            <span style="margin-left:100px;margin-right:50px;">按品牌查找：
                <asp:DropDownList ID="brandlist" runat="server">
                     <asp:ListItem Value="1">联想</asp:ListItem>
                     <asp:ListItem Value="2">Apple</asp:ListItem>
                     <asp:ListItem Value="3">谷歌</asp:ListItem>
                     <asp:ListItem Value="4">HTC</asp:ListItem>
                     <asp:ListItem Value="5">小米</asp:ListItem>
                     <asp:ListItem Value="6">大疆</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;按类型查找：
                <asp:DropDownList ID="searchtype" runat="server">
                    <asp:ListItem Value="1">智能家居</asp:ListItem>
                    <asp:ListItem Value="2">手机</asp:ListItem>
                    <asp:ListItem Value="3">VR眼镜</asp:ListItem>
                    <asp:ListItem Value="4">数码产品</asp:ListItem>
                    <asp:ListItem Value="5">其他</asp:ListItem>
               </asp:DropDownList>
            </span>

            <span style="display:inline-block;position:relative">
                <asp:TextBox ID="searchcon" runat="server" Width="184px"></asp:TextBox>
                <img style="position:absolute;vertical-align:central; margin-left:-27px;margin-top:1px; top: 0px; left: 223px; width: 13px;" src="image/search.png" height="21px"/>
                &nbsp;&nbsp;
            </span>
            <asp:Button ID="Button1" runat="server" Text="查找" CssClass="searchbtn" OnClick="Button1_Click" />
        </div>
        <div class="shownew">
            <table style="overflow:hidden; text-align:center" cellpadding="0" cellspacing="0" border="1">
                <thead style="background-color:#9C9CF5; height:60px;">
                    <th width="40px" height="60">productID</th>
                    <th width="100px">productName</th>
                    <th style="width:670px">proDescription</th>
                    <th width="100px">productPic</th>
                    <th width="100px">cost</th>
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
                        <td><%=dt_new.Rows[i]["productID"] %></td>
                        <td style="overflow:hidden;width:200px"><%=dt_new.Rows[i]["productName"] %></td>
                        <td style="overflow:hidden;width:500px"><%=dt_new.Rows[i]["proDescription"] %></td>
                        <td style="padding:10px">
                            <img src='<%=dt_new.Rows[i]["productPic"] %>' Width="80" Height="80" /></td>
                        <td><%=dt_new.Rows[i]["cost"] %></td>
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

