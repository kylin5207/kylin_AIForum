                          <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/superslide.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
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
                        <li><img src="image/index01.jpg" /></li>
					    <li><img src="image/index02.jpg" /></li>
					    <li><img src="image/index03.jpg" /></li>
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
            <img src="image/index05.jpg" width="1400" height="600px"/>
            <img src="image/index04.jpg" width="1400" height="600px"/>
        </div>

    </div>
</asp:Content>

