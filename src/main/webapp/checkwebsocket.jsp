<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype>
<html lang="zh-hans">
<head>
<title>websocket-是否支持</title>
<meta charset="utf-8">
</head>
<body>
	<h1>Echo Server</h1>
	<script type="text/javascript">
		if(window.WebSocket){
			alert("Support WebSocket");
		}else {
			alert("UnSupport WebSocket");
		}
	</script>
</body>
</html>
