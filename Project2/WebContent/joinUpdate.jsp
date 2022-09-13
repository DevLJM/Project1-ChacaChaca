<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">

<title>로그인</title>

<!-- 메뉴바 css  -->
<style type="text/css">
#nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #94B49F;
    text-align: center;
}

#nav li a {
    display: block;
    color: #FCF8E8;
    padding: 8px 16px;
    text-decoration: none;
    border-bottom: 1px solid #FCF8E8;
}
	
#nav li a.active {
    background-color: #94B49F;
    color: white;
}
	
#nav li a:hover:not(.active) {
    background-color: #FCF8E8;
    color: #CEE5D0;
}
</style>
<!-- 메뉴바 css  -->

</head>
<body>
<%
	// 세션 영역에 있는 로그인 아이디 정보를 가져오기
	String id = (String)session.getAttribute("loginID");
	
	if(id == null) {
		// 로그인 안함
		response.sendRedirect("login.jsp");
	}
	
	%>
<script type="text/javascript">

	function join() {
		var password = document.form.password.value;
		var password_check = document.form.password_check.value;
		var name = document.form.name.value;
		var birth = document.form.birth.value;
		var phone = document.form.phone.value;
		var address = document.form.address.value;
		
		if(password == "") {
			alert("비밀번호를 입력하세요.");
			return false;
		} else if(password.length < 8) {
			alert("비밀번호는 8자 이상입니다.");
			return false;
		}
		
		if(password_check != password) {
			alert("비밀번호를 확인하세요.");
			return false;
		}
		
		if (name == "") {
			alert("이름을 입력하세요.");
			return false;
		}
		
		if(birth == "") {
			alert("생년월일을 입력하세요.");
			return false;
		}
		
		if (phone == "") {
			alert("전화번호를 입력하세요.");
			return false;
		}
		if (address == "") {
			alert("주소를 입력하세요.");
			return false;
		}
	}
	
	function del() {
		location.href="delete.jsp";
	}
</script>
<!-- ---------------------- 최상단 메뉴바 -------------------------------- -->
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">CHACA<span>CHACA</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="info.html" class="nav-link">이용안내</a></li>
	          <li class="nav-item"><a href="services.html" class="nav-link">요금안내</a></li>
	          <li class="nav-item"><a href="pricing.html" class="nav-link">예약하기</a></li>
	          <li class="nav-item"><a href="review.html" class="nav-link">고객센터</a></li>
	          <li class="nav-item active"><a href="joinUpdate.html" class="nav-link">마이페이지</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>

<!-- ---------------------- 경로 -------------------------------- -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> 
          							<span>마이페이지 <i class="ion-ios-arrow-forward"></i></span></p>
            						<h1 class="mb-3 bread">회원정보</h1>
          </div>
        </div>
      </div>
    </section>


<!-- 소제목+본문 섹션 시작 -->
    <section class="ftco-section">
		<div class="container">
<!-- ---------------------- 소제목 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">회원정보</h2>
          		</div>
       		</div>

<!--좌측 메뉴바  -->

<nav id="nav">
            <ul>
                <li><a href="#" onclick="location.href='joinUpdate.html'">회원정보</a></li>
                <li><a href="#" onclick="location.href='reservUpdate.html'">예약내역</a></li>
            </ul>
    </nav>


<!--좌측 메뉴바 -->

       		
<!-- ---------------------- 본문 -------------------------------- -->
       		<div class="row d-flex justify-content-center">
       			<div class="col-md-5 ">
            		<form action="joinUpdatePro.jsp" method="post" class="p-2 contact-form" name="form" onsubmit="return join();">
	              		<div class="form-group">
	                		아이디(이메일): <input type="email" class="form-control" value="${sessionScope.loginID }" name="id_email" readonly>
	              		</div>
	              		<div class="form-group">
	                		비밀번호: <input type="password" class="form-control" name="password">
	              		</div>
	              		<div class="form-group">
	                		비밀번호 확인: <input type="password" class="form-control" name="password_check">
	              		</div>
	              		<div class="form-group">
	                		이 름: <input type="text" class="form-control" value="${sessionScope.name }"name="name">
	              		</div>
	              		<div class="form-group">
	                		생년월일: <input type="date" class="form-control" value="${sessionScope.birth }" name="birth">
	              		</div>
	              		<div class="form-group">
	                		전화번호: <input type="tel" class="form-control" value="${sessionScope.phone }" name="phone">
	              		</div>
	              		<div class="form-group">
	                		주 소: <input type="text" class="form-control" value="${sessionScope.address }" name="address">
	              		</div>
	              		<div class="form-group">
	             			<p class="d-flex justify-content-center mt-5 mb-0 d-block">
	                			<input type="submit" value="수정" class="btn btn-primary py-3 px-5 mr-3 ">
	                			<input type="button" value="삭제" class="btn btn-primary py-3 px-5 ml-3 " onclick="del();">
	              			</p>
	              		</div>
            		</form>
          		</div>
          </div>
          
<!-- 소제목+본문 섹션 끝 -->
       </div>
    </section>



<!-- ---------------------- 푸터 -------------------------------- -->
    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2"><a href="#" class="logo">CHACA<span>CHACA</span></a></h2>
              <p>당신의 곁에있는<br>가장 가깝고 착한 플랫폼,<br> 지금 차카차카 하세요!</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="info.html" class="py-2 d-block">이용안내</a></li>
                <li><a href="#" class="py-2 d-block">요금안내</a></li>
                <li><a href="#" class="py-2 d-block">예약하기</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">고객센터</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">도움이 필요하신가요?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">부산광역시<br> 분당구 센텀일로 95</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+82 777 7777</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourchacachaca.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Eine</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
<!-- ---------------------- 푸터 끝-------------------------------- -->
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
</body>
</html>