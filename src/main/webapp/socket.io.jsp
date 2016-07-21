<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html lang="zh-hans">
<head>
<title>websocket-socket.io.js</title>
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
		
		<div class="row" id="mesageinfo">
			
		</div>
		
	</div>
	<!-- <script src="//cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="//cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
	<script src="/socket.io/socket.io.js"></script>
	<script>
		  var socket = io('http://127.0.0.1');
		  socket.on('connect', function(){
			  console.log("..........");
		  });
		  console.log(io);
		  socket.on('event', function(data){});
		  socket.on('disconnect', function(){});
		</script>
	
</body>
</html>
