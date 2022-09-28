<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#popup_layer {
	position: fixed;
	top: 0;
	left: 0;
 	z-index: 10000;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 25, 0, 0.1);
}
/*팝업 박스*/
.popup_box {
	position: relative;
	top: 20%;
	left: 30%;
	width: 380px;
	transform: translate(-30%, -30%);
	z-index: 1002;
	box-sizing: border-box;
	background: white;
 	border: 0.05px solid black; 
/* 	box-shadow: 2px 5px 10px 0px rgba(0, 22, 0, 0.5); */
/* 	-webkit-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35); */
/* 	-moz-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35); */
}
/*컨텐츠 영역*/
.popup_box .popup_cont {
	padding: 50px;
	line-height: 1.4rem;
	font-size: 17px;
	word-break: break-word;
}
/* 제목 */
.popup_box .popup_cont h2 { 
	color: black;
	margin: 0;
}

/*버튼영역*/
.popup_box .popup_btn {
	font-size: 17px;
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 70px;
	background: blue;
	word-break: break-word;
}

.popup_box .popup_btn a {
	position: relative;
	display: table-cell;
	height: 70px;
	color: white;
	font-size: 17px;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	background: #94B49F;
}

.popup_box .popup_btn a:before {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #1089ff;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.popup_box .popup_btn a:after {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #1089ff;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.popup_box .popup_btn a.close_day {
	font-size: 20px;
	font-weight: bold;
	background: #FEF9E8;
	color: black;
}

.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after
	{
	display: none;
}
/*오버레이 뒷배경*/
.popup_overlay {
	position: fixed;
	top: 0px;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1001;;
	background: rgba(0, 0, 0, 0.2);
}
</style>

<script type="text/javascript">

$(function(){
	$(".popup_box").draggable({containment:'parent', scroll:false}); // 레이어 팝업 창 드래그 가능
	//{containment:'parent', scroll:false} 화면 영역 밖으로 드래그 안됌.
                
	if(document.cookie.indexOf("popToday=close") < 0 ){      // 쿠키 저장여부 체크
		document.getElementById("popup_layer").style.display = "block";
		}else {
		document.getElementById("popup_layer").style.display = "none"; 
		}
	});
             
             
function closeToday() { 
	setCookie( "popToday", "close" , 1 ); 
	$("#popup_layer" ).css("display", "none");
	document.getElementById("popup_layer").style.display = "none";
}
function closePop() { 
	document.getElementById("popup_layer").style.display = "none";
}
</script>



</head>
<body>

<div id="popup_layer">
  <div class="popup_box">
      <!--팝업 컨텐츠 영역-->
      <div class="popup_cont">
          <h2>ChacaChaca 신규회원 이벤트</h2>
          <p>
          회원가입하면 쿠폰 줌!!<br>
          포인트도 줌!!<br>
          가입해조
          </p>
      </div>
        <div id="check" style="padding-left: 10px;"><input type="checkbox" name="chkbox" value="checkbox" id='chkbox' >
        <label for="chkbox"><a id="chk_today" href="javascript:closeToday();" class="close_day">오늘 하루 동안 보지 않기</a></label></div><br>
      <div class="popup_btn">
          <a href="javascript:closePop();">닫기</a> 
      </div>
  </div>
</div>



</body>
</html>