<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/review/boardList.jsp</title>
</head>
<body>
	<h1>/review/boardList.jsp</h1>
	<h2> 리뷰 게시판 💖  </h2>
	
	<h3><a href="./BoardWrite.bo">글쓰기 페이지로 이동</a></h3>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th width="150px">내용</th>
			<th>별점</th>
			<th>글쓴이</th>
			<th>조회수</th>
			<th>작성일</th>
			<th>IP</th>
		</tr>
		
	<c:forEach var="dto" items="${requestScope.boardList }">
		<tr>
			<td>${dto.bno }</td>
			<td>
				<!-- 여기~~~ 어떡하쥐~~~ -->
				<a href="./BoardContent.bo?bno=${dto.bno }&pageNum=${requestScope.pageNum}"> ${dto.content } </a>
			</td>
			<td>${dto.rate }</td>
			<td>${dto.name }</td>
			<td>${dto.readcount }</td>
			<td>${dto.date }</td>
			<td>${dto.ip }</td>
		</tr>
	</c:forEach>
	
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