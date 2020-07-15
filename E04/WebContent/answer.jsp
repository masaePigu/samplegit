<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	final String CORRECT = "1";	// 正解
	// パラメータの文字コードを指定
	request.setCharacterEncoding("UTF-8");
	// formからパラメータを受け取る
	String choice = request.getParameter("choice");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>答え合わせ</title>
</head>
<body>
	<% if(CORRECT.equals(choice)){ %>
	<h1>おめでとうございます。正解です。</h1>
	<% } else { %>
	<h1>残念！　不正解です。</h1>
	<% } %>
</body>
</html>