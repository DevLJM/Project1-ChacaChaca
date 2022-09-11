<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review/boardContent.jsp</title>
</head>
<body>
	<h1> review/boardContent.jsp </h1>
	
	<table border="1" style="font-size: x-large;">
		<tr>
			<td>글번호</td>
			<td>${requestScope.dto.bno }</td>
			<td>조회수</td>
			<td>${dto.readcount }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${dto.name }</td>
			<td>작성일</td>
			<td>${dto.date }</td>
		</tr>
		<tr>
			<td>별점</td>
			<td colspan="3">${dto.rate } </td> 
			<!-- 제목(colspan = "3" 열 3개 합친거) -->
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="3" height="300px"> ${dto.content }</td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td colspan="3"> ${dto.file }</td>
		</tr>
		<tr>
			<td><input type="button" value="수정"></td>
			<td><input type="button" value="삭제"></td>
			<td><input type="button" value="답글"></td>
			<td><input type="button" value="목록" onclick="location.href='./BoardList.bo?pageNum=${pageNum}';"></td>
		</tr>
	</table>
	
		<!-- EL표현식, JSTL로 이전,, 1 2 3 ,,, 다음 구현 -->
	<c:if test="${cnt != 0 }">
		<c:if test="${startPage > pageBlock }">
			<a href="./BoardList.bo?pageNum=${startPage-pageBlock}">[이전]</a>
		</c:if>
		
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<a href="./BoardList.bo?pageNum=${i }">[${i }]</a>
		</c:forEach>
		
		<c:if test="${endPage < pageCount }">
			<a href="./BoardList.bo?pageNum=${startPage+pageBlock }">[다음]</a>
		</c:if>
	</c:if>
	
</body>
</html>