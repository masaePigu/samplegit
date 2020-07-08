<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Memo</title>
</head>
<body>
	<!--
	<p style="width:300px"><%= request.getParameter("memotext") %></p>
	 -->
 	<div style="width:320px; word-wrap:break-word;(overflow-wrap:break-word;)">
		<p><%= request.getParameter("memotext") %></p>
	</div>
	<hr>
	<p><a href='memo.html'>戻る</a></p>
</body>
</html>
