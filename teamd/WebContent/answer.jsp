<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.List,dto.ShopDTO" %>
<% ShopDTO shop = (ShopDTO)session.getAttribute("shop"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/my.css">
	<title>秘密の合言葉</title>
</head>
<body>
	<div align="center">
		<table>

		<div class="container text-center">
				<h2><p class="bg-info text-white rounded p-3" >秘密の合言葉</p></h2>
			</div>

<br>

			<%
				String message = (String)request.getAttribute("message");
				if(message == null) {
					message = "" ;
				}
			%>
				<font color="red" size="4"><%=message%></font>
			</p>


		<form action= "LoginServlet" method ="post">
		<tr>
			<th width="100"><label>質問内容<label></th>
				<td><%=shop.getQuestion() %><br>
			</td>
			<tr>
			<th width="100"><label>答　　え</label></th>
			<td><input type = "text" name = answer >
			<br></td>
			</tr>
		</table>
		<br>
		<div class="row">
			<div class="col text-center">
			<input type ="submit" value="ログイン">
			</div>
		</div>

		</form>

	</div>
</body>
</html>