<%@page import="com.chaca.review.db.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script>
<!-- 팝업창 닫기 -->
	function closePopup(bno) {
	     window.close();
	     opener.location.href='./BoardList.bo';
// 	     location.href='./BoardList.bo?pageNum=" + pageNum + "';
	}
</script>
<!-- 팝업창 닫기 -->

<!-- 버튼 스타일 -->
<style type="text/css">
.btn {
	color: white;
	background-color: #1089ff;
	padding: 12px 27px;
	text-decoration: none;
	border: none;
}
h3{
padding-top: 10px;
padding-bottom: 20px;
}
</style>
<!-- 버튼 스타일 -->

</head>
<body>

<% 
String bno  = request.getParameter("bno");
String pageNum = request.getParameter("pageNum");
%>

<%-- 	<legend><%=bno %></legend> --%>

<div style="text-align: center;">
<fieldset style="border:none; background-color:#FCF8E8;  margin-top: 26px; margin-left: 60px; margin-right: 60px;" >
	<form action="./BoardDeletePro.bo?pageNum=1" method="post">
		<input type="hidden" name="bno" value="<%=bno %>">
		<h3>🔹 비밀번호 입력창 🔹</h3>
		비밀번호 : <input type="password" id="pw" name="password" autofocus><br><br>
		<input type="submit" value="이용후기 삭제" class="btn" onclick="openPopUp(${dto.bno})">
		&nbsp;
		<input type="button" value="창 닫기" class="btn" onclick="closePopup(${dto.bno})"><br><br>
	</form>
	</fieldset>
</div>



</body>
</html>