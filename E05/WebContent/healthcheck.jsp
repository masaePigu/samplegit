<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	double bmi = (Double) request.getAttribute("bmi");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>健康チェック</title>
	<style>
		table, tr, td, th {
			border: 1px solid;
			border-collapse: collapse;
			padding: 2px 15px;
		}
		th {
			background-color: #CCFFFF;
		}
	</style>
</head>
<body>
	<table>
		<tr>
			<th>氏名</th>
			<td><%= request.getParameter("username") %></td>
		</tr>
		<tr>
			<th>身長</th>
			<td><%= request.getParameter("height") %></td>
		</tr>
		<tr>
			<th>体重</th>
			<td><%= request.getParameter("weight") %></td>
		</tr>
		<tr>
			<th>BMI</th>
			<td><%= String.format("%.2f",bmi) %></td>
		</tr>
	</table>
	<p><a href="health.html">戻る</a>
</body>
</html>