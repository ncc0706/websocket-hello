<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype>    
<html lang="zh-hans">
<head>
	<title>jstl</title>
	<meta charset="utf-8">
	<script type="text/javascript">
		
	</script>
</head>
<body>
<c:out value="This is <c:out/>"/>
<c:set var="username" value="tom"/>
<c:out value="${username }"/>
<c:remove var="username"/>
<c:out value="${username }"/>
<c:catch var="aa">
<%
	
	List datas = new ArrayList();
	datas.add(1212);
	datas.add("aaaaaaaa");
	datas.add("bbbbbbbb");
	datas.add("cccccccc");
	request.setAttribute("datas", datas);
	//int a = 10/0;
%>
</c:catch>
<c:out value="${aa }"/>
<%-- <c:import url="http://www.baidu.com/"></c:import> --%>
<ul>
<c:forEach items="${datas }" var="d" varStatus="id">
	<li>${id.index}-->>${d}</li>
</c:forEach>
</ul>
<c:forTokens items="a:b:c:d" delims=":" var="token">
	<c:out value="${token}"/>
</c:forTokens>

<%-- <c:redirect url="index.jsp"/> --%>

<br/>
<c:url var="urlStr" value="/user.jsp" >
<c:param name="id" value="111" />
</c:url>
<c:out value="${urlStr }"></c:out>
<br/>
<c:url var="urlStr" value="/user.jsp" context="/project" /><!--同一容器的其他web应用-->
<c:out value="${urlStr}/${param.id }" />
<hr>
fn:<br/>
asdf: a => ${fn:contains('asdf', 'a') }<br/>
endsWith: ==> ${fn:endsWith("readme.md", '.md')}
</body>

</html>
