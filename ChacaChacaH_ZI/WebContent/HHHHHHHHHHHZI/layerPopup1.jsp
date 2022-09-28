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
	background-color: rgba(0, 0, 0, 0.4);
}
/*팝업 박스*/
.popup_box {
	position: relative;
	top: 50%;
	left: 50%;
	width: 550px;
	transform: translate(-50%, -50%);
	z-index: 1002;
	box-sizing: border-box;
	background: #fff;
	box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
}
/*컨텐츠 영역*/
.popup_box .popup_cont {
	padding: 50px;
	line-height: 1.4rem;
	font-size: 14px;
	word-break: break-word;
}

.popup_box .popup_cont h2 {
	padding: 15px 0;
	color: #333;
	margin: 0;
}

.popup_box .popup_cont p {
	border-top: 1px solid #666;
	padding-top: 30px;
}
/*버튼영역*/
.popup_box .popup_btn {
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 70px;
	background: #5d5d5d;
	word-break: break-word;
}

.popup_box .popup_btn a {
	position: relative;
	display: table-cell;
	height: 70px;
	color: #fff;
	font-size: 17px;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	background: #102c5c;
}

.popup_box .popup_btn a:before {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #fff;
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
	background: #fff;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.popup_box .popup_btn a.close_day {
	background: #5d5d5d;
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
	background: rgba(0, 0, 0, 0.5);
}
</style>

<script type="text/javascript">

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
          회원가입하면 쿠폰 줌!!
          포인트도 줌!!
          가입해조
          </p>
      </div>
      <!--팝업 버튼 영역-->
      <div class="popup_btn">
          <!--하루동안 보지않기-->
          <a id="chk_today" href="javascript:closeToday();" class="close_day">하루동안 창 안 열기ㅠㅠ</a> 
          <!--7일간 보지않기-->
          <!-- <a id="chk_today" href="javascript:closeToday();" class="close_day">Do not open for 7 days</a>-->
          <a href="javascript:closePop();">닫기</a>
      </div>
  </div>
</div>


</body>
</html>