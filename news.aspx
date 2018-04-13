<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/superslide.css" rel="stylesheet" />
    <link href="css/news.css" rel="stylesheet" />

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
                        <li><img src="image/new01.jpg"/></li>
					    <li><img src="image/new02.jpg"/></li>
					    <li><img src="image/new03.jpg"/></li>
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
            <asp:DataList ID="DataList1" runat="server" 
         Height="3200px" RepeatColumns="1" 
        Width="1250px" CaptionAlign="Top" CellPadding="30" GridLines="Horizontal" HorizontalAlign="Center" RepeatDirection="Horizontal" style="margin-left: 15px; margin-right: 137px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound">
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
            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("newPic") %>' style="margin-left: 10px; margin-top:0px; padding:15px; float:left;" Width="250px" />
            <asp:Label ID="newTitleLabel" CssClass="new-title" Font-Size="X-Large" ForeColor="#666666" runat="server" Text='<%# Eval("newTitle") %>' Width="850px"/>
            <br />
            
            <asp:Label ID="newDescriptionLabel" runat="server" Text='<%# Eval("newDescription") %>' Width="850px"/>
            <br />
            <br />
            Date:
            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#999999" ForeColor="White" />
    </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
        </div>
    
        </div>

</asp:Content>

