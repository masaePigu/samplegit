<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String memotext = request.getParameter("memotext");
	if(memotext == null) {
		 memotext = "";
	}
	String prevtext = request.getParameter("prevtext");
	if(prevtext == null) {
		 prevtext = "";
	}
	memotext = prevtext + memotext;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Memo</title>
</head>
<body>
	<h1>メモ</h1>
	<form action="memo2.jsp" method="post">
		<textarea rows="5" cols="60" name="memotext"></textarea>
		<hr>
		<input type="submit" value="送信">
		<input type="hidden" name="prevtext" value="<%= memotext %>">
	</form>
	<hr>
	<!--
	<p style="width:300px"><%= memotext %></p>
	 -->
	<div style="width:320px; word-wrap:break-word;(overflow-wrap:break-word;)">
		<p><%= memotext %></p>
	</div>
</body>
</html>