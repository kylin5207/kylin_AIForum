<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myAnswer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/myAnswer.css" rel="stylesheet" />
    <script type="text/html" runat="server">
    int i = 1;    
    public int getNum()
    {
        return i++;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="con-title">
        <img src="image/myanswerbg.jpg"  width="1350" height="160" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="500px" 
        Width="1100px" CaptionAlign="Top" CellPadding="10" GridLines="Horizontal" HorizontalAlign="Center" style="margin-left: 130px; margin-right:0px;overflow:scroll;"  CellSpacing="10" BorderColor="#B9C0BE" BorderWidth="0px" RepeatColumns="1"  BackColor="#B9C0BE" CssClass="datalist">
            <ItemTemplate>
                <span style="margin-left:15px;margin-right:0px;background-color:#4C80BA;color:white;padding-right:1008px;">第<%=getNum()%>条</span>
                <div class="answer">
                      
                   <div class="answer-user">
                    <br />
                       <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("userPic") %>' width="60" Height="60"/>
                         <span style="display:inline-block;width:100px ;text-align:center;color:#1b57d1;font-weight:bold;">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("userName") %>' />
                         </span>
                   </div>

                    <div class="answer-con">
                     我的回答：<asp:Label ID="Label2" runat="server" Text='<%# Eval("answer") %>' />
                    </div>
                     <span class="date">
                    <asp:Label ID="answerdatetimeLabel" runat="server" Text='<%# Eval("answerdatetime") %>' />
                     </span>
                </div>
                 <div class="question">
                     
                      <div class="question-user">
                          <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Expr2") %>' width="60" Height="60"/>
                          <span style="display:inline-block;width:100px ;text-align:center;color:#1b57d1;font-weight:bold;">
                              <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("Expr1") %>' />
                         </span>
                      </div>
                         
                     <span class="question-title">
                      <asp:Label ID="questionnameLabel" runat="server" Text='<%# Eval("questionname") %>' />
                     </span>
                      <br />
                      <br />
                      <span class="question-con">
                           问题详情：<asp:Label ID="questionContentLabel" runat="server" Text='<%# Eval("questionContent") %>' />
                      </span>
                      <br />
                      <span class="date">
                         提出时间：<asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
                       </span>
                  </div>
               
            </ItemTemplate>

        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AIFORUMConnectionString %>" SelectCommand="SELECT User_Answer.answer, User_Answer.answerdatetime, X.userName, X.userPic, Y.userName AS Expr1, Y.userPic AS Expr2, User_Question.questionname, User_Question.questionContent, User_Question.datetime FROM User_Info AS X CROSS JOIN User_Answer INNER JOIN User_Question INNER JOIN User_Info AS Y ON User_Question.userID = Y.userID ON User_Answer.questionID = User_Question.questionID WHERE (X.userID = @userID) AND (User_Answer.userID = @userID) ORDER BY User_Answer.answerdatetime DESC">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="userID" SessionField="userId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <span class="goback"><a href="Question.aspx">返回</a></span>
    </div>
</asp:Content>

