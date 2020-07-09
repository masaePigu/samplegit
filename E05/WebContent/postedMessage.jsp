<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	 String concat = (String) request.getAttribute("concattext");
	 if(concat == null){
		 concat = "";
	 }
%>
<input type="hidden" name="prevtext" value="<%= concat %>">
<!--
<p style="width:300px"><%= concat %></p>
 -->
<div style="width:320px; word-wrap:break-word;(overflow-wrap:break-word;)">
	<p><%= concat %></p>
</div>
