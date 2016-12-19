<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="format-detection" content="telephone=no"/>
	<meta name="format-detection" content="email=no"/>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" name="viewport">
	<title>多人聊天室</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
	<!--[if lt IE 8]><script src="./json3.min.js"></script><![endif]-->
	<script src="http://192.168.99.178:3000/socket.io/socket.io.js"></script>
</head>
<body>
        <div id="loginbox">
            <div style="width:260px;margin:200px auto;">
                请先输入你在聊天室的昵称
                <br/>
                <br/>
                <input type="text" style="width:180px;" placeholder="请输入用户名" id="username" name="username" />
				<input type="button" style="width:50px;" value="提交" onclick="CHAT.usernameSubmit();"/>
            </div>
        </div>
        <div id="chatbox" style="display:none;">
            <div style="background:#3d3d3d;height: 28px; width: 100%;font-size:12px;">
                <div style="line-height: 28px;color:#fff;">
                    <span style="text-align:left;margin-left:10px;">Websocket多人聊天室</span>
                    <span style="float:right; margin-right:10px;"><span id="showusername"></span> | 
					<a href="javascript:;" onclick="CHAT.logout()" style="color:#fff;">退出</a></span>
                </div>
            </div>
            <div id="doc">
                <div id="chat">
                    <div id="message" class="message">
<div id="onlinecount" style="background:#EFEFF4; font-size:12px; margin-top:10px; margin-left:10px; color:#666;">
</div>
                    </div>
                    <div class="input-box">
                        <div class="input">
<input type="text" maxlength="140" placeholder="请输入聊天内容，按Ctrl提交" id="content" name="content">
                        </div>
                        <div class="action">
                            <button type="button" id="mjr_send" onclick="CHAT.submit();">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/client.js"></script>
    </body>
</html>