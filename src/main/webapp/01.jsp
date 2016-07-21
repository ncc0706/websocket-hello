<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html lang="zh-hans">
<head>
<title>websocket-helloworld</title>
<meta charset="utf-8">
<link href="//cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.css"
	rel="stylesheet">
</head>
<body>

	<div class="container" style="margin-top: 30px;">
		<div class="row">
			<div class="well">
				<p>WebSocket Chat
			</div>
			<p class="bg-success" style="padding: 15px;display: none;" id="open-info"></p>
			<p class="bg-danger" style="padding: 15px;display: none;" id="open-error"></p>
		</div>
		
		<div class="row">
			<div class="form-group form-horizontal">
				<div class="col-sm-10">
					<input type="text" class="form-control" id="message" required style="height: 45px;"/>
				</div>
				<button type="submit" class="col-sm-2 btn btn-success btn-lg " id="send">发送消息</button>
			</div>
		</div>
		
		<div class="row">
			<div id="mesageinfo" class="col-sm-8"></div>
			<div id="onlineuser" class="col-sm-4"></div>
		</div>
		
	</div>
	<script src="//cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="//cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
		var websocket = null;
		
		//if(window.WebSocket){
		if ('WebSocket' in window) {
			websocket = new WebSocket("ws://localhost/echo");
		}else{
			alert("Not Support WebSocket");
		}
		
		//websocket连接成功
		websocket.onopen = function () {
			$("#open-info").css('display','block'); 
			$("#open-info").html("WebSocket连接成功");
		}
		
		//连接发生错误的回调方法
		websocket.onerror = function () {
			$("#open-error").css('display','block'); 
			$("#open-error").html("WebSocket连接失败");
		}
		
		//接收到消息的回调方法
		websocket.onmessage = function(event){
			$("#mesageinfo").append('<p class="bg-info" style="padding:15px;">'+event.data+'</p>');
		}
		
		
		$(function(){
			//add click event			
			$("#send").click(function(){
				var message = $("#message").val();
				websocket.send(message);
			});
		});
		
		
		
		
	</script>
</body>
</html>
