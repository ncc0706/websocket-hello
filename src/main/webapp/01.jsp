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
		
		<div class="well">
			<p>WebSocket Chat
		</div>
		
		<p class="bg-success" style="padding: 15px;display: none;" id="open-info"></p>
		
		<div class="row">
			<div class="form-group">
				<label for="mesage" class="col-sm-2 control-label">信息</label>
				<div class="col-sm-8">
					<input type="text" class="form-control" id="message"/>
				</div>
				<button type="submit" class="col-sm-2 btn btn-success lg-btn " id="send">发送消息</button>
			</div>
			
		</div>
		
	</div>
	<script src="//cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="//cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
		var websocket = null;
		
		if(window.WebSocket){
			websocket = new WebSocket("ws://127.0.0.1:8080/websocket-hello/echo");
		}else{
			alert("Not Support WebSocket");
		}
		
		//websocket连接成功
		websocket.onopen = function () {
			$("#open-info").css('display','block'); 
			$("#open-info").html("WebSocket连接成功");
		}
		
		
		
		
		
	</script>
</body>
</html>
