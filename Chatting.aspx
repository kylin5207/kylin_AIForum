<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chatting.aspx.cs" Inherits="Chatting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/superslide.css" rel="stylesheet" />
    <link href="css/ChatOnline.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="con-title">
        <img src="image/chat.jpg"  width="1350" height="200" style="margin-top:-57px; margin-left:0px"/>
    </div>

    <div class="contain">
            
            <div class="chatbox">
                
                <div class="chat_top fn-clear">
                    
                    <p class="col-md-8" style="font-size:20px; margin:20px 0px 5px 30px;">
                        <strong>在线聊天</strong>
                    </p>
                
                 <div class="uinfo fn-clear col-md-2 col-md-offset-2">
                    
                    <div class="uface">
                        <asp:Image ID="UserPic" runat="server" Height="40px" Width="40px" />
                    </div>
                    <div class="uname">
                        <asp:Label ID="user_name" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
                
                <div class="chat_message fn-clear">
                    <div class="chat_left col-md-9 col-sm-12 col-xs-12">
                        <div class="message_box" id="message_box">
                            <div class="msg_item fn-clear">
                                    <div class="uface">
                                        <img src="~/Image/53f44283a4347.jpg" width="40" height="40" alt="" />

                                    </div>
                                    <div class="item_right">
                                    
                                        <div class="msg other">请大家遵守网络聊天秩序，营造绿色和谐聊天氛围。</div>
                                        <div class="name_time">管理员 · 3分钟前</div>
                                     </div>
                                </div>
                                <br />
                          </div>
                        
                         <div class="write_box">
                             <textarea id="message" name="message" class="write_area col-md-12 col-sm-12 col-xs-12" placeholder="快点加入热聊吧~" style="background-color: #99CCFF; margin-left:484px"></textarea>
                              <%--<input type="hidden" name="fromname" id="fromname" value="@LoginBase.username" />--%>
                             <asp:Label ID="fromname" runat="server" Text="Label" Visible="False"></asp:Label>
                              <input type="hidden" name="to_uid" id="to_uid" value="0">
                         <div class="facebox fn-clear col-md-12 col-sm-12 col-xs-12">
                         <div class="expression"></div>
                          <div class="chat_type" id="chat_type">群聊</div>
                        <button type="button" class="sub_but" id="sub_msg">提 交</button>
                        </div>
                            </div>
        </div>
        <div class="chat_right col-md-3">
            <p style="font-size:15px;"><strong>用户列表</strong></p>
            <ul class="user_list" title="双击用户私聊">
                <% 
                    foreach (var onlinUser in onLineUserList)
                    {
                  %>
                
                        <li class="fn-clear" data-id="<%= onlinUser.UserId %>"><span><a href="/Show/UserPage?ysl=@onlinUser.UserId"><img src="<%= onlinUser.UserImg %>" width="30" height="30" alt="" /></a></span><em><%= onlinUser.UserName %></em><small class="online" title="在线"></small></li>
                    <%
                    }
                    %>
                
               
            </ul>
        </div>
    </div>
</div>
        </div>
    <script src="js/chatting.js"></script>
    <script>
        var da = <% LoginBase.username.ToString(); %>
    </script>
</asp:Content>

