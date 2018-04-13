<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/superslide.css" rel="stylesheet" />
    <link href="css/product.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con">
        
        <div class="con-head">
        
                <div id="slideBox" class="slideBox">
			       
                    <div class="hd">
				      <ul>
                          <li><img src="image/superslide_li.png" /></li>
                          <li><img src="image/superslide_li.png" /></li>
                          <li><img src="image/superslide_li.png" /></li>
				      </ul>
			        </div>

			    <div class="bd">
				    
                    <ul>
                        <li><img src="image/product01.jpg"></li>
					    <li><img src="image/product02.jpg"/></li>
					    <li><img src="image/product03.jpg"/></li>
				    </ul>
			    </div>

			<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
			<a class="prev" href="javascript:void(0)"></a>
			<a class="next" href="javascript:void(0)"></a>

		</div>

		<script type="text/javascript">
		    jQuery(".slideBox").slide({ mainCell: ".bd ul", autoPlay: true });
		</script>
        </div>

        <div class="clearfix"></div>
        
        <div class="contain">
            <span class="userchoose">
                
                <span>品牌：</span>
                <asp:DropDownList ID="brandlist" runat="server" AutoPostBack="true">
                    <asp:ListItem>小米</asp:ListItem>
                    <asp:ListItem>HTC</asp:ListItem>
                    <asp:ListItem>华为</asp:ListItem>
                    <asp:ListItem>联想</asp:ListItem>
                    <asp:ListItem>大疆</asp:ListItem>
                </asp:DropDownList>
      
                <span style="margin-left:40px;">类别：</span>
                <asp:DropDownList ID="classID" runat="server">
                    <asp:ListItem>手机</asp:ListItem>
                    <asp:ListItem>电脑</asp:ListItem>
                    <asp:ListItem>智能穿戴</asp:ListItem>
                    <asp:ListItem>智能家居</asp:ListItem>
                   </asp:DropDownList>
                <span style="margin-left:40px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="162px" CssClass="searchtext"></asp:TextBox>
                    <img src="image/search.png" width="23px" height="23px" style="margin-left:-28px; margin-bottom:-8px;" />
                </span>
                &nbsp;&nbsp;
                <asp:Button ID="searchbtn" runat="server" Text="查找" />
                
            </span>
            <asp:DataList ID="DataList1" runat="server" 
         Height="1200px" RepeatColumns="1" 
        Width="1250px" CaptionAlign="Top" CellPadding="30" GridLines="Vertical" HorizontalAlign="Center" RepeatDirection="Horizontal" style="margin-left: 15px; margin-right: 137px" DataKeyField="productID" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
        <AlternatingItemStyle BackColor="White" />
               
                 <FooterTemplate>
                       <div style="margin:0px; padding:0px;width:1200px; text-align:center;background-color:#D5DCE1">
                         当前第<asp:Label ID="labCurrentPage" runat="server"></asp:Label>页
                        /
                        共<asp:Label ID="labPageCount" runat="server"></asp:Label>页&nbsp; &nbsp;
                        <asp:LinkButton ID="lnkbtnFirst" runat="server" CommandName="first" Font-Underline="False" ForeColor="#ffffff" BackColor="#6F6B71" >首页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnFront" runat="server" CommandName="pre" Font-Underline="False" ForeColor="#ffffff" BackColor="#6F6B71">上一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnNext" runat="server" CommandName="next" Font-Underline="False" ForeColor="#ffffff" BackColor="#6F6B71">下一页</asp:LinkButton>
                        <asp:LinkButton ID="lnkbtnLast" runat="server" CommandName="last" Font-Underline="False" ForeColor="#ffffff" BackColor="#6F6B71" >尾页</asp:LinkButton>
                        &nbsp;&nbsp; 跳转至：<asp:TextBox ID="txtPage" runat="server" Height="21px" Width="35px"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CommandName="search" Height="19px" Text="GO" />
                        </div>
                 </FooterTemplate>

        <ItemTemplate>
            <table class="auto-style8" width="1250px" cellpadding="0px" cellspacing="0px">
                <tr valign="middle" height="250px">
                    <td align="center" class="auto-style9" valign="middle" width="300">
                        <asp:Image ID="Image1" runat="server" Height="220px" ImageUrl='<%# Eval("productPic") %>' style="margin-left: 10px; margin-top:0px; padding:15px; float:left;" Width="220px" />
                    </td>
                
                    <td valign="middle" width="300px">
                        <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' Font-Size="X-Large" ForeColor="#666666" CssClass="product-title" />
                        <br /><br />
                        <span style="color:red">价格：</span>&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' CssClass="cost" />
                    </td>

                    <td>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("proDescription") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#999999" ForeColor="White" />
    </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
    
        </div>
</asp:Content>

