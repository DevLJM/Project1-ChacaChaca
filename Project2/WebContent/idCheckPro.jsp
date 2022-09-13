<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Select.jsp</h1>
	
	<%
	// 한글 인코딩 처리
	request.setCharacterEncoding("UTF-8");

	// 전달된 정보 저장
	String id = request.getParameter("id");
		
	final String DRIVER = "com.mysql.cj.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul";
	final String DBID = "root";
	final String DBPW = "1234";
	
	// 1. 드라이버 로드
	Class.forName(DRIVER);
	System.out.println("드라이버 연결 성공!");
	
	// 2. 디비 연결
	Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
	System.out.println("디비 연결 성공!");
	
	// 3. SQL & pstmt
	// sql - 전체 회원목록 조회
	String sql = "select * from userinfo where id_email = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	
	// 4. SQL 실행
	ResultSet rs =  pstmt.executeQuery();
	
	// 5. 데이터 처리(select)
	out.println("입력 ID : <strong>" + id + "</stong>");
	if(rs.next()) {
		out.println("<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>");
	} else {
		out.println("<p>사용 가능한 아이디입니다.</p>");
		out.println("<a href='javascript:apply(\"" + id + "\")'>[적용]</a>");
		%>
		<script>
	    	function apply(id){
	            opener.document.form.id_email.value = id;
	            window.close(); //창닫기
	        }//apply () end
	    </script>
		<%
	}
	
	%> <hr>
 <a href="javascript:history.back()">[다시시도]</a>
 &nbsp; &nbsp;
 <a href="javascript:window.close()">[창닫기]</a>
	
</body>
</html>