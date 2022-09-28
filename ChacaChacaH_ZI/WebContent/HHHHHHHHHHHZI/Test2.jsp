<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>이용약관</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
</head>


<style>
.agree_box {
	position: relative;
/* 	border: 1px solid #bbb; */
/* 	padding: 20px; */
/* 	margin-bottom: 10px */
}

.agree_box input {
	display: none
}

.agree_box h4 {
/* 	position: relative; */
	font-size: 18px;
	font-weight: bold;
	color: #292929;
	width: 100%;
	background-color: pink;
}

.agree_box h4 strong {
	font-size: 18px;
	font-weight: bold;
	color: red;
}


.agree_box .con {
	display: none;
	width: 97%;
/* 	border: 1px solid #f0f0f0; */
/* 	background: #fcfcfd; */
	background-color: red;
	padding: 10px;
 	height: 59px;
	overflow-y: auto;
 	margin-top: 10px;
}

.agree_box .view {
	font-size: 14px;
	color: #444;
	opacity: 0.8;
	display: inline-block;
	cursor: pointer;
	text-align: right;
	
}
.agree_box.on .con { display: block }

</style>

<script>
	$(function() {
		$(".agree_box .view").click(function() {
			$(".agree_box").removeClass("on");
			$(".agree_box .view").html("약관보기 ▼");
			$(".agree_box .con").slideUp();
			$(this).parent().next().stop().slideToggle();
			$(this).parent().parent().addClass("on");
			$(this).html("약관닫기 ▲");
		});
		$(".agree_box label ").click(function() {
			$(this).toggleClass('on');
		});
	});
</script>
<body>

	<div
		class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
		<div class="col-md-7 ">
			<div class="agreeCont">
				<h3 class="tit_style">
					<span class="bar"></span> 이용약관 및 개인정보활용 동의</h3>
				<form action="paymentinfo.html" class="bg-light p-5 contact-form">
					<section class="agree_box on">
					<div class="checkboxgroup">

						<input type="checkbox" id="agre0">
						<h4>
							<strong>(필수) </strong>개인정보 이용약관 동의 <span class="view">약관보기▼</span>
						</h4>
						<div class="con" style="display: none">내용무</div>
					</div>
					</section>
					<section class="agree_box">
					<div class="checkboxgroup">

						<input type="checkbox" id="agre1">
						<h4>
							<strong>(필수) </strong>서비스 이용약관 동의 <span class="view">약관보기▼</span>
						</h4>
						<div class="con">내용무</div>
					</div>
					</section>
					<section class="agree_box">
					<div class="checkboxgroup">

						<input type="checkbox" id="agre2">
						<h4>
							(선택) 마케팅 수신 동의 <span class="view">약관보기▼</span>
						</h4>
						<div class="con">내용무</div>
					</div>
					</section>
				</form>
			</div>
			<!-- // content -->
		</div>
	</div>


</body>

</html>
 