<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 正解
	final String[] CORRECT = { "2", "5" };
	// パラメータの文字コードを指定
	request.setCharacterEncoding("UTF-8");
	// formからパラメータを受け取る
	String[] choice = request.getParameterValues("choice2");
	// 正解の判定
	boolean isOk = true;
	if(choice != null && choice.length == CORRECT.length) {
		for(int i = 0 ; i < choice.length ; i++ ){
			if(!choice[i].equals(CORRECT[i])){
				isOk = false;
				break;
			}
		}
	} else {
		isOk = false;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>答え合わせ</title>
</head>
<body>
	<% if(isOk) { %>
		<h1>おめでとうございます。正解です。</h1>
	<% } else { %>
		<h1>残念！　不正解です。</h1>
	<% } %>
	<br>
	<a href="quiz1.html">前の問題へ</a>
</body>
</html>