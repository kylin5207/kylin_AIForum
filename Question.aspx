<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Question.aspx.cs" Inherits="Qestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/question.css" rel="stylesheet" />
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
                        <li><img src="image/question02.jpg"/></li>
					    <li><img src="image/question01.jpg"/></li>
					    <li><img src="image/question03.jpg"/></li>
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
            <table border="1" cellspacing="0" cellpadding="0" height="600" width="1200" bgcolor="white">
                <tr height="40">
                    <td class="con-title">
                        <span>我的提问</span>
                        <span class="more"><ins><a href="#">查看更多</a></ins></span>
                    </td>
                </tr>

                <tr height="160" style="height:160px;overflow:scroll; display:inline-block;">
                    <td>
                        <asp:DataList ID="DataList1" runat="server"  Height="130px" 
        Width="1250px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 0px; margin-right: 0px" DataKeyField="questionID" DataSourceID="SqlDataSource1" CellSpacing="10" BorderColor="Black"  CssClass="answerlist">
                            <ItemTemplate>
                            
                               <span class="question-title">
                                    问题：<asp:Label ID="questionnameLabel" runat="server" Text='<%# Eval("questionname") %>' />
                                </span>
                                <br />
                                <div class="question-con">
                                    <asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
                                </div>
                                <br />
                                <span class="date">
                                提问时间：<asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                </span>
                                <asp:ImageButton ID="goQuestion" runat="server" ImageUrl="~/image/goquestion.png" CssClass="goQues" />
                            
                            </ItemTemplate>

                        </asp:DataList>
                       
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT TOP (1) userID, questionID, questionname, questionContent, datetime, Enable FROM User_Question WHERE (userID = @userID) ORDER BY datetime DESC">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
                                </SelectParameters>
                        </asp:SqlDataSource>
                       
                         
                    </td>
                </tr>

                <tr height="40">
                    <td class="con-title">
                        <span>我的回答</span>
                        <span class="more"><ins><a href="#">查看更多</a></ins></span>
                    </td>
                    
                </tr>

                <tr height="160" style="height:160px; overflow:scroll;display:inline-block;">
                    <td>
                        <asp:DataList ID="DataList2" runat="server"  Height="160px" 
        Width="1225px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 0px; margin-right:0px" DataSourceID="SqlDataSource2" CellSpacing="10" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" RepeatColumns="1" CssClass="answerlist">
                            <ItemTemplate>
                                <span class="question-title">
                                回答问题：
                                <asp:Label ID="questionnameLabel" runat="server" Text='<%# Eval("questionname") %>' />
                                </span>
                                <br />
                                <span class="question-con">
                                问题详情：<asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
                                </span>
                                <br />
                                <span class="date">
                                提问时间:
                                <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                </span>
                                <br />
                                <div class="answer">
                                <span style="color:green;margin-left:20px; margin-top:5px;">我的回复：</span>
                                <div class="answer-con">
                                <asp:Label ID="answerLabel" runat="server" Text='<%# Eval("answer") %>' />
                                </div>
                                <span class="date">
                                回答时间：<asp:Label ID="answerdatetimeLabel" runat="server" Text='<%# Eval("answerdatetime") %>' />
                                </span>
                                </div>
                                
                            
                            </ItemTemplate>

                        </asp:DataList>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT User_Question.questionname, User_Question.questionContent, User_Question.datetime, User_Answer.answer, User_Answer.answerdatetime FROM User_Answer INNER JOIN User_Question ON User_Answer.questionID = User_Question.questionID WHERE (User_Answer.userID = @userID) ORDER BY User_Answer.answerdatetime DESC">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                </tr>

                <tr height="40">
                    <td class="con-title">
                        <span>随便看看</span>
                        <span class="more"><ins><a href="#">查看更多</a></ins></span>
                    </td>
                    
                </tr>

                <tr height="160" style="height:160px; overflow:scroll;display:inline-block;">
                    <td>
                        <asp:DataList ID="DataList3" runat="server" DataKeyField="questionID" DataSourceID="SqlDataSource3" Height="160px" 
        Width="1250px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 0px; margin-right:0px" CellSpacing="10" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" RepeatColumns="1"   CssClass="answerlist">
                            <ItemTemplate>
                                <span class="question-title">
                                问题：<asp:Label ID="questionnameLabel" runat="server" Text='<%# Eval("questionname") %>' />
                                </span>
                                <br />
                               
                                 <div class="question-con">
                                <asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
                                </div>
                                
                                <br />
                                <span class="date">
                                提问时间：
                                <asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                                </span>
                                 <asp:ImageButton ID="goAnswer" runat="server" ImageUrl="~/image/goanswer.png" CssClass="goQues" />
                            </ItemTemplate>

                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT TOP (3) userID, questionID, questionname, questionkind, questionContent, datetime FROM User_Question ORDER BY datetime DESC"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            
        </div>
    </div>
</asp:Content>

