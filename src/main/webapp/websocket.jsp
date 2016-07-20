<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html lang="zh-hans">
<head>
<title>websocket-helloworld</title>
<meta charset="utf-8">
</head>
<body>
	<h1>Echo Server</h1>
	<div id="output"></div>

	<script type="text/javascript">
		// 初始化 websocket 连接及事件处理
		function setup(){
			output = document.getElementById("output");
			ws = new WebSocket("ws://echo.websocket.org/echo");
			
			//监听连接事件及发送消息时间
			ws.onopen = function(e){
				log('Connected');
				sendMessage('Hello Websocket......');
			}
			
			ws.onclose = function(e){
				log("Disconnected:  " + e.reason);
			}
			
			ws.onerror = function(e){
				log(e);
			}
			
			ws.onmessage = function(e){
				log("Message received: " + e.data);
				ws.close();
			}
			
		}
		
		//发送消息
		function sendMessage(m){
			ws.send(m);
			log("Message send =>>" + m);
		}
		
		
		//将日志信息输出到页面
		function log(s){
			var p = document.createElement("p");
			//p.style.wordWrap = "break-word";
			p.textContent = s;
			output.appendChild(p);
			//同样控制台也打印日志
			console.log(s);
		}
		
		setup();
		
	</script>
</body>
</html>
