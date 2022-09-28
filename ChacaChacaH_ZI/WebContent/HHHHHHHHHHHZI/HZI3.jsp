<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function checkAllCheckbox() { 
  var agreeAllCheckbox = document.getElementById("agreeAll"); 
  var e = document.querySelectorAll('input[type="checkbox"]:not(#agreeAll)'); 
  for(var i = 0, len = e.length; i < len; ++i) { 
    if(!e[i].checked) { 
      agreeAllCheckbox.checked = false; 
      return; 
    } 
  } 
  agreeAllCheckbox.checked = true; 
}



function toggleAllCheckbox(source) { 
  var e = document.querySelectorAll('input[type="checkbox"]:not(#agreeAll)'); 
  for(var i = 0, len = e.length; i < len; ++i) { 
    e[i].checked = source.checked; 
  } 
}
</script>

</head>
<body>



<input type="checkbox" id="agree1" onclick="checkAllCheckbox();"> 
<label for="agree1">[필수] 동의1</label>

<input type="checkbox" id="agree2" onclick="checkAllCheckbox();"> 
<label for="agree2">[필수] 동의2 </label>

<input type="checkbox" id="agreeAll" onclick="toggleAllCheckbox(this);"> 
<label for="agreeAll">전체 동의</label>





</body>
</html>