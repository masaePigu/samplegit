<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--@ page import="com.example.model.Book" --%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	//Book BookingId = (Book)session.getAttribute("bookObj");
%>

<!DOCTYPE html>
<html>
<head>
<%--@ include file="icon.jsp" --%>
<meta charset="UTF-8">
<title>決済方法選択</title>
</head>
<body>

	<%--@ include file="PartsMenu.jsp" --%>

	<font size="5">ご予約が完了しました。</font>
	<br>

	<%-- <font size="3" color="orange">予約番号：</font><font size="3"><%= BookingId.getBookingId() %></font> --%>
	<br>
	<br>
	<p>
		予約完了メールを送信しました。<br>予約番号・予約内容は、ご購入・予約確認の際に必要になります。
	</p>
	<br>
	<p>-----------------------------------</p>
	<br>
	<br>
	<%
		Calendar c = Calendar.getInstance();
	%>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
	%>
	<%
		c.add(Calendar.HOUR_OF_DAY, 72);
	%>
	<%
		String str1 = sdf.format(c.getTime());
	%>

	<font size="3"><span
		style="color: white; background-color: orange;">購入期限</span>：<%=str1%>


	</font>
	<br>
	<br> 購入期限までにご購入いただけない場合、ただいまご予約いただいた航空券は
	<br> 自動的にキャンセルとなりますのでご注意ください。
	<br>


	<!--form action="./PaymentServlet" method="post"  -->
	<form action="./PaymentServlet" method="post" name="myform"  novalidate>
	<form action="./PaymentServlet" method="post" name="myform">
		<font size="3">お支払い方法</font>
		<br>
			<input type="radio" id="radio-1" name="radiov" value="1" required
				onclick="clickBtn2()" /><label for="radio-1">窓口</label>
		<br>
		<%--クレジット決済を選択した場合、決済日のラジオボタンが出現 --%>

			<input type="radio" id="radio-2" name="radiov" value="2" required
				onclick="clickBtn1()"  /><label for="radio-2">クレジットカード</label>


		<div id="r">
			<input type="radio" id="r1" name="radiod" value="1" required
				onclick="clickBtn3()"  />
				<label for="r1" checked >当日</label> <input
				type="radio" id="r2" name="radiod" value="2" required
				onclick="clickBtn4()" /><label for="r2">3日後</label>
		</div>

		<script>
			//初期表示は非表示
			document.getElementById("r").style.display = "none";

			function clickBtn1() {
				const r = document.getElementById("r");

				if (r.style.display == "block") {
					// noneで非表示
					r.style.display = "none";
				} else {
					// blockで表示
					r.style.display = "block";
				}
			}
		</script>

		<div id="cf">

			<input type="text" id="cardname" name="name" required><label
				for="cardname">カード名義</label><br> <input type="text"
				id="cardnumber" name="number" required><label
				for="cardnumber">カード番号</label><br>
			<br> <label for="deadline"> <select name="month"
				id="card-month" class="form-control" required>
					<%
						final int N = 12;
					%>
					<option value="">月を選択</option>
					<%
						for (int i = 1; i <= N; i++) {
					%>
					<option value=<%=i%>><%=i%></option>
					<%
						}
					%>
			</select>月／ <select name="year" id="card-year" class="form-control" required>
					<%
						final int M = 2025;
					%>
					<option value="">年を選択</option>
					<%
						for (int j = 2020; j <= M; j++) {
					%>
					<option value=<%=j%>><%=j%></option>
					<%
						}
					%>
			</select>年
			</label> <input type="text" id="securitycode" name="code" required><label
				for="securitycode">セキュリティーコード</label><br>
			<br> <select name="paymemtnum" id="paymentnum"
				class="form-control" required>
				<option value="">回数を選択</option>
				<option value="1">1回</option>
				<option value="2">2回</option>
				<option value="3">3回</option>
				<option value="6">6回</option>
				<option value="10">10回</option>
				<option value="12">12回</option>
				<option value="15">15回</option>
				<option value="18">18回</option>
				<option value="20">20回</option>
				<option value="24">24回</option>
			</select>



		</div>


		<input type="submit" value="確定">
	</form>

	<script>
		//初期表示は非表示
		document.getElementById("r").style.display = "none";
		document.getElementById("cf").style.display = "none";

		function clickBtn2() {
			const r = document.getElementById("r");
			const cf = document.getElementById("cf");

			if (r.style.display == "block" || cf.style.display == "block") {
				// noneで非表示
				r.style.display = "none";
				cf.style.display = "none";
			}
		}
	</script>
	<script>
		//初期表示は非表示
		document.getElementById("cf").style.display = "none";

		function clickBtn3() {
			const cf = document.getElementById("cf");

			if (cf.style.display == "block") {
				// noneで非表示
				cf.style.display = "none";
			} else {
				// blockで表示
				cf.style.display = "block";
			}
		}
	</script>
	<script>
		//初期表示は非表示
		document.getElementById("cf").style.display = "none";

		function clickBtn4() {
			const cf = document.getElementById("cf");

			if (cf.style.display == "block") {
				// noneで非表示
				cf.style.display = "none";
			}
		}


	</script>



</body>
</html>