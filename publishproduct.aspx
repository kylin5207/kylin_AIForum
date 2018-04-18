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
                  产品名称： <asp:TextBox ID="TextBox1" placeholder="请在此输入产品名称" runat="server" Height="22px" Width="235px"></asp:TextBox>
                    <br />
                    <br />
                  产品品牌：  <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="84px">
                                <asp:listitem>Apple</asp:listitem>
                                <asp:listitem>谷歌</asp:listitem>
                                <asp:listitem>小米</asp:listitem>
                                <asp:listitem>HTC</asp:listitem>
                                <asp:listitem>联想</asp:listitem>
                              </asp:DropDownList>
                    <br />
                    <br />
                    产品类别： <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="86px">
                                 <asp:listitem>智能家居</asp:listitem>
                                 <asp:listitem>手机</asp:listitem>
                                 <asp:listitem>VR眼镜</asp:listitem>
                                 <asp:listitem>数码产品</asp:listitem>
                                 <asp:listitem>其他</asp:listitem>
                            </asp:DropDownList>
                    <br />
                    <br />
                   产品价格： <asp:TextBox ID="TextBox6" runat="server" Width="75px" Height="16px"></asp:TextBox>元
                </td>
            </tr>

            <tr height="40">
                <td class="table-title">
                    产品简介
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="97px" Width="464px" CssClass="coninput"></asp:TextBox>
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
                    <asp:Image ID="productimage" runat="server" width="50" Height="50" CssClass="image"/>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="发布" CssClass="publishbtn"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

