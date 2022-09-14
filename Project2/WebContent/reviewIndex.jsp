<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ChacaChaca/index.jsp</title>
</head>
<body>
	<%
		// ★★MVC 프로젝트에서는 index.jsp페이지 외에는 절대!! jsp 페이지 실행 금지!!!★★
		
		// MVC 프로젝트 실행 시작페이지^^
		response.sendRedirect("./BoardWrite.bo");
// 		response.sendRedirect("./BoardList.bo");
		
	%>

</body>
</html>