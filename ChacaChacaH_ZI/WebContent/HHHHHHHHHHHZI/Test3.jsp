<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>이용약관</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
  <title>Accordion Menu</title>
</head>
 

    <style>
*{
  box-sizing: border-box; 
}
  
.que:first-child{
    border-top: 1px solid black;
  }
  
.que{
  position: relative;
  padding: 17px 0;
  cursor: pointer;
  font-size: 14px;
  border-bottom: 1px solid #dddddd;
  
}
  
.que::before{
  display: inline-block;
  content: 'Q';
  font-size: 14px;
  color: #006633;
  margin: 0 5px;
}

.que.on>span{
  font-weight: bold;
  color: #006633; 
}
  
.anw {
  display: none;
    overflow: hidden;
  font-size: 14px;
  background-color: #f4f4f2;
  padding: 27px 0;
}
  
.anw::before {
  display: inline-block;
  content: 'A';
  font-size: 14px;
  font-weight: bold;
  color: #666;
  margin: 0 5px;
}

.arrow-wrap {
  position: absolute;
  top:50%; right: 10px;
  transform: translate(0, -50%);
}

.que .arrow-top {
  display: none;
}
.que .arrow-bottom {
  display: block;
}
.que.on .arrow-bottom {
  display: none;
}
.que.on .arrow-top {
  display: block; 
}
    </style>
    
    <script type="text/javascript">
    
    $(".que").click(function() {
    	   $(this).next(".anw").stop().slideToggle(300);
    	  $(this).toggleClass('on').siblings().removeClass('on');
    	  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
    	});
    </script>
    <body>
    

</head>
<body>

<h1>Accordion Menu</h1>

<div id="Accordion_wrap">
     <div class="que">
      <span>This is first question.</span>
       <div class="arrow-wrap">
         <span class="arrow-top">↑</span>
        <span class="arrow-bottom">↓</span>
       </div>
      
     </div>
     <div class="anw">
      <span>This is first answer.</span>
     </div>
      <div class="que">
      <span>This is second question.</span>
     </div>
     <div class="anw">
      <span>This is second answer.</span>
     </div>
      <div class="que">
      <span>This is third question.</span>
     </div>
     <div class="anw">
      <span>This is third answer.</span>
     </div>
</div>


</body>
 
</html>
 