<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Memo</title>
	</head>
<body>
	<h1>メモ</h1>
	<form action="memo3" method="post">
		<textarea rows="5" cols="60" name="memotext"></textarea>
		<textarea rows="5" cols="60" name="memotext"></textarea>
		<hr>
		<input type="submit" value="送信">
				<input type="submit" value="送信">
		<hr>
		<%@ include file="postedMessage.jsp" %>
	</form>
	</body>
</html>