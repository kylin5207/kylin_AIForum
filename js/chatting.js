var fromname = "@LoginBase.username";//document.getElementById('name').value;
var UserImg = "@LoginBase.Image";
    

var msgContainer = document.getElementById('message_box');
var text = document.getElementById('message');
connect();
var ws;
//var WebSocketaddress;

//创建连接
function connect() {

    if (typeof (WebSocket) == "undefined") {
        layer.msg("您的浏览器不支持WebSocket");
        return;
    }
    //var address = "ws://127.0.0.1:8081";//本地测试用
    // GetWebSocketaddress();
    var WebSocketaddress = $("#WebSocketaddress").attr("value");
    ws = new WebSocket(WebSocketaddress);
    //打开事件
    ws.onopen = function (e) {
        $.ajax({
            url: "/Home/UserJoinOnline",
            dataType: 'json',
            type: 'post',
            success: function (result) {
                var json = eval('(' + result + ')');
                var num = json[0]["type"];
                var returnval = json[0]["data"];
                //0-成功 1-服务器操作异常 2-用户操作异常
                if (num != "0") {
                    layer.alert(returnval);
                }
            },
            error: function (result) {
                console.log('用户加入聊天室出现错误'+result);
            }
        });
    };
    //获得消息事件
    ws.onmessage = function (msg) {
        var data = msg.data;
        var json = eval('(' + data + ')')[0];
        var htmlData = '<div class="msg_item fn-clear">'
                   + '   <div class="uface"><img src="' + json["UserImg"] + '" width="40" height="40"  alt=""/></div>'
                   + '   <div class="item_right">'
                   + '     <div class="msg other">' + json["msgall"].replace(/yslkylin77/g, '<br />') + '</div>'
                   + '     <div class="name_time">' + json["from_name"] + ' · ' + json["dateNow"] + '</div>'
                   + '   </div>'
                   + '</div>'
                   + '<br />';
        $("#message_box").append(htmlData);
        $('#message_box').scrollTop($("#message_box")[0].scrollHeight + 20);

    };
    //发生了错误事件
    ws.onerror = function (e) {
        quit();
        layer.alert("聊天服务器出现错误，无法连接" + e.reason);
    };
    //关闭事件
    ws.onclose = function (e) {
        quit();
        layer.alert("聊天服务器拒绝访问，无法连接" + e.reason);
    };
    text.focus();
}

var to_uid = 0; // 默认为0,表示发送给所有用户
var to_uname = '';
//用户列表点击事件
$('.user_list > li').dblclick(function () {
    to_uname = $(this).find('em').text();
    to_uid = $(this).attr('data-id');
    if (to_uname == fromname) {
        layer.alert('您不能和自己聊天!');
        return false;
    }
    if (to_uname == '所有用户') {
        $("#toname").val('');
        $('#chat_type').text('群聊');
    } else {
        $("#toname").val(to_uid);
        $('#chat_type').text('您正和 ' + to_uname + ' 聊天');
    }
    $(this).addClass('selected').siblings().removeClass('selected');
    $('#message').focus().attr("placeholder", "您对" + to_uname + "说：");
});
//提交按钮事件
$('#sub_msg').click(function (event) {
    sendMessage(fromname, to_uid, to_uname);
});
//按下按钮或键盘按键
$("#message").keydown(function (event) {
    var e = window.event || event;
    var k = e.keyCode || e.which || e.charCode;
    //按下ctrl+enter发送消息
    if ((event.ctrlKey && (k == 13 || k == 10))) {
        sendMessage(fromname, to_uid, to_uname);
    }
});
//发送信息到本地和WebSocket服务器
function sendMessage(from_name, to_uid, to_uname) {
    var msg = $("#message").val();
    var msgall = msg;
    if (to_uname != '') {
        msgall = from_name + '对 ' + to_uname + ' 说： ' + msg;
        msg = '对 ' + to_uname + ' 说： ' + msg;
    }
    var dateNow = new Date().toLocaleString();

    var htmlData = '<div class="msg_item fn-clear">'
                   + '   <div class="uface"><img src="' + UserImg + '" width="40" height="40"  alt=""/></div>'
                   + '   <div class="item_right">'
                   + '     <div class="msg own">' + msg.replace(/\n/g, '<br />') + '</div>'
                   + '     <div class="name_time">' + from_name + ' · ' + dateNow + '</div>'
                   + '   </div>'
                   + '</div>'
                   + '<br />';
    $("#message_box").append(htmlData);
    $('#message_box').scrollTop($("#message_box")[0].scrollHeight + 20);
    $("#message").val('');

    var msgall_1 = msgall.replace(/\n/g, 'yslkylin77');
        
    var sendvalue = "[{ 'UserImg': '{0}', 'msgall': '{1}', 'from_name': '{2}', 'dateNow': '{3}' }]".format(UserImg, msgall_1, from_name, dateNow);
    ws.send(sendvalue);
}

//拼接字符串
String.prototype.format = function () {
    if (arguments.length == 0) return this;
    var param = arguments[0];
    var s = this;
    if (typeof (param) == 'object') {
        for (var key in param)
            s = s.replace(new RegExp("\\{" + key + "\\}", "g"), param[key]);
        return s;
    } else {
        for (var i = 0; i < arguments.length; i++)
            s = s.replace(new RegExp("\\{" + i + "\\}", "g"), arguments[i]);
        return s;
    }
}
//退出WS
function quit() {
    if (ws) {
        $.ajax({
            url: "/Home/UserLeave",
            dataType: 'json',
            type: 'post',
            success: function (str) {
            },
            error: function (result) {
                console.log('用户退出错误'+result);
            }
        });
        ws.send("ga_me_ov_er_ysl_kylin_77")
        ws.close();
        ws = null;
    }
}
//页面刷新时执行
function closeScoket() {
    quit();
}
////获取Web.Config中的值
//function GetWebSocketaddress() {
//    WebSocketaddress = System.Web.Configuration.WebConfigurationManager.AppSettings["WebSocketaddress"];
//}
