<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review/writeForm.jsp</title>
</head>
<body>
	<h1>review/writeForm.jsp</h1>
	
	<h2>📝 리뷰 작성 📝</h2>
	
	<fieldset>
		<form action="./BoardWriteAction.bo" method="post">
			
			이름: <input type="text" name="name"> <br>
			아디: <input type="email" name="id"> <br>
			비번: <input type="password" name="password"> <br>
			내용: <textarea rows="10" cols="20" name="content"></textarea> <br>
			별점: <input type="number" max="5" min="1">
			
			<input type="submit" value="리뷰 작성">
		
		</form>
	</fieldset>

</body>
</html>