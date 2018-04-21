<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.master" AutoEventWireup="true" CodeFile="publishproduct.aspx.cs" Inherits="publishproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/publishproduct.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <div class="con-title">
            <img style="vertical-align:central; float:left;" src="image/adminnew2.png" width="30" height="30" />
            <span style="font-size:18px;margin-top:10px;float:left;">当前页面：产品发布</span>
        </div>
        <table class="publish-table" width="600" height="500" cellspacing="0" cellpadding="0" >
            <tr height="40">
                <td class="table-title">
                    产品信息：
                </td>
            </tr>
            <tr height="150">
                <td style="padding-left:190px">
                  产品名称： <asp:TextBox ID="proname" placeholder="请在此输入产品名称" runat="server" Height="22px" Width="235px"></asp:TextBox>
                    <br />
                    <br />
                  产品品牌：  <asp:DropDownList ID="brandlist" runat="server" Height="30px" Width="84px">
                                <asp:listitem Value="1">联想</asp:listitem>
                                <asp:listitem Value="2">Apple</asp:listitem>
                                <asp:listitem Value="3">谷歌</asp:listitem>
                                <asp:listitem Value="4">HTC</asp:listitem>
                                <asp:listitem Value="5">小米</asp:listitem>
                                <asp:listitem Value="6">大疆</asp:listitem>
                              </asp:DropDownList>
                    <br />
                    <br />
                    产品类别： <asp:DropDownList ID="classlist" runat="server"  Height="30px" Width="86px">
                                 <asp:listitem Value="1">智能家居</asp:listitem>
                                 <asp:listitem Value="2">手机</asp:listitem>
                                 <asp:listitem Value="3">VR眼镜</asp:listitem>
                                 <asp:listitem Value="4">数据产品</asp:listitem>
                                 <asp:listitem Value="5">其他</asp:listitem>
                             
                               </asp:DropDownList>
                    <br />
                    <br />
                   产品价格： <asp:TextBox ID="procost" runat="server" Width="75px" Height="16px"></asp:TextBox>元
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    产品简介
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="prodescription" runat="server" TextMode="MultiLine" Height="97px" Width="464px" CssClass="coninput"></asp:TextBox>
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    产品图片
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="PicUpLoad" runat="server" Width="176px" CssClass="publishimage"/>
                    <asp:Button ID="Button2" runat="server" Text="确定上传" OnClick="Button2_Click" />
                    <asp:Image ID="productimage" runat="server" ImageUrl="~/image/upload.jpg" width="50" Height="50" CssClass="image"/>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="发布" CssClass="publishbtn" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

