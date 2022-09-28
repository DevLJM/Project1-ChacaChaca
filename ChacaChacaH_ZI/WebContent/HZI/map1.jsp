<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>jQuery2/json2.html</title>
<script type="text/javascript" src="jquery-3.6.0.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		// json1.jsp 에 가서 json데이터를 가져와서 반복문 출력
		$.ajax({
			url : 'mapContent.jsp',
			dataType : 'json',
			success : function(rdata) {
				// rdata => json데이터 , 자바스크립트 배열
				$.each(rdata, function(index, item) {
					$('body').append(item.id + " , " + item.name + "<br>");
				});
			}
		});
		// 	id="btn" 버튼을 클릭했을때 json1.jsp에서 json데이터 가져와서
		// 	반복해서 table 태그에 출력
		$('#btn').click(function() {
// 			alert('클릭');
			$.ajax({
				url : 'mapContent.jsp',
				dataType : 'json',
				success : function(rdata) {
					$.each(rdata, function(index, item) {
						$('table').append('<tr><td>'+item.id+'</td><td>'+item.name+'</td></tr>');
					});
				}
			});
		});
	});
</script>
</head>
<body>
<input type="button" value="데이터가져오기" id="btn">
<table border="1">
<tr><td>아이디</td><td>이름</td></tr>

</table>
</body>
</html>