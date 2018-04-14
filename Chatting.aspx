<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="js/jquery1.42.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    <link href="css/superslide.css" rel="stylesheet" />
    <link href="css/index.css" rel="stylesheet" />
    <link href="css/ChatOnline.css" rel="stylesheet" />
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
        <div class="contain" style="margin-top:50px; margin-left:10%;margin-right:10%;">
            <h2>在线聊天室</h2>
            <div class="chatbox">
    <div class="chat_top fn-clear">
        <p class="col-md-8" style="font-size:20px; margin:20px 0px 5px 30px;"><strong>在线聊天</strong></p>
        <div class="uinfo fn-clear col-md-2 col-md-offset-2">
            <div class="uface"><img src="@LoginBase.Image" width="40" height="40" alt="@LoginBase.username" /></div>
            <div class="uname">
                @LoginBase.username<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>
    <div class="chat_message fn-clear">
        <div class="chat_left col-md-9 col-sm-12 col-xs-12">
            <div class="message_box" id="message_box">
                @*<div class="msg_item fn-clear">
                    <div class="uface"><img src="~/Image/53f44283a4347.jpg" width="40" height="40" alt="" /></div>
                    <div class="item_right">
                        <div class="msg other">近日，TIOBE发布了2014年9月的编程语言排行榜，Java、C++跌至历史最低点，前三名则没有变化，依旧是C、Java、Objective-C。</div>
                        <div class="name_time">猫猫 · 3分钟前</div>
                    </div>
                </div>
                <br />*@
            </div>
            <div class="write_box">
                <textarea id="message" name="message" class="write_area col-md-12 col-sm-12 col-xs-12" placeholder="说点啥吧..."></textarea>
                <input type="hidden" name="fromname" id="fromname" value="@LoginBase.username" />
                <input type="hidden" name="to_uid" id="to_uid" value="0">
                <div class="facebox fn-clear col-md-12 col-sm-12 col-xs-12">
                    <div class="expression"></div>
                    <div class="chat_type" id="chat_type">群聊</div>
                    <button type="button" class="sub_but" id="sub_msg">提 交</button>
                </div>
            </div>
        </div>
        <div class="chat_right col-md-3">
            <p style="font-size:15px;"><strong>在线用户</strong></p>
            <ul class="user_list" title="双击用户私聊">
                @foreach (var onlinUser in ViewBag.OnlineUserList)
                {
                    <li class="fn-clear" data-id="@onlinUser.Id"><span><a href="/Show/UserPage?ysl=@onlinUser.UserId"><img src="@onlinUser.UserImg" width="30" height="30" alt="" /></a></span><em>@onlinUser.UserName</em><small class="online" title="在线"></small></li>
                }
                
                @*<li class="fn-clear" data-id="2"><span><img src="~/Image/53f44283a4347.jpg" width="30" height="30" alt="" /></span><em>猫猫</em><small class="online" title="在线"></small></li>
                <li class="fn-clear" data-id="3"><span><img src="~/Image/53f442834079a.jpg" width="30" height="30" alt="" /></span><em>白猫</em><small class="online" title="在线"></small></li>
                <li class="fn-clear" data-id="3"><span><img src="~/Image/53f442834079a.jpg" width="30" height="30" alt="" /></span><em>白猫</em><small class="online" title="在线"></small></li>*@
            
            </ul>
        </div>
    </div>
</div>
        </div>

    </div>
</asp:Content>

