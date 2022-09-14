<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
<script type="text/javascript" src="jquery-3.6.0.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfca5b3863564f021175c274a0079e2a"></script>
<script type="text/javascript">
	$(function(){
		// 질문유형을 선택한다.
		chnQnaType('small' , '11');
	});

	function chnQnaType(type, select) {
    
		$('#schQnaType').empty();
    
		if(type == 'small') { // 소형
			$('#schQnaType').append("<option value='11'>차1</option>'");
			$('#schQnaType').append("<option value='12'>차2</option>'");
			$('#schQnaType').append("<option value='13'>차3</option>'");
		} else if (type == 'medium') {  // 중형
			$('#schQnaType').append("<option value='21'>차4</option>'");
			$('#schQnaType').append("<option value='22'>차5</option>'");
			$('#schQnaType').append("<option value='23'>차6</option>'");
		} else if ( type == 'large') {  // 대형
			$('#schQnaType').append("<option value='31'>차7</option>'");
			$('#schQnaType').append("<option value='32'>차8</option>'");
			$('#schQnaType').append("<option value='33'>차9</option>'");
		}
		
		document.getElementById("schQnaType").style.display = "";
    
		if ($.trim(select) != "") {
			$('#select1').val(type);
			$('#schQnaType').val(select);
		}
	}

</script>

<title>예약하기</title>
</head>
<body>
<!-- ----------------------------------------------- 최상단 메뉴바 시작 ----------------------------------------------- -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">CHACA<span>CHACA</span></a>
		<%
		String id = (String)session.getAttribute("loginID");
		
		if(id == null) {
			// 로그인 안함
			response.sendRedirect("login.jsp");
		}
		
		if(id == null) {
			%>
			<a class="navbar-brand" href="join.jsp">회원가입</a>
			<a class="navbar-brand" href="login.jsp" id="login">로그인</a>
			<%
		} else {
			%>
			<a class="navbar-brand" href="logoutPro.jsp" id="logout">로그아웃</a>
			<%
		}
		%>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="info.jsp" class="nav-link">이용안내</a></li>
				<li class="nav-item"><a href="services.jsp" class="nav-link">요금안내</a></li>
				<li class="nav-item active"><a href="pricing.jsp" class="nav-link">예약하기</a></li>
				<li class="nav-item"><a href="reviewIndex.jsp" class="nav-link">고객센터</a></li>
				<li class="nav-item"><a href="joinUpdate.jsp" class="nav-link">마이페이지</a></li>
			</ul>
		</div>
	</div>
</nav>
<!-- ------------------------------------------------ 최상단 메뉴바 끝 ------------------------------------------------ -->

<!-- ------------------------------------------ 경로 시작 -------------------------------------------- -->
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a> > </span><span>예약하기 ></span></p>
           		<h1 class="mb-3 bread">예약하기</h1>
			</div>
       	</div>
	</div>
</section>
<!-- -------------------------------------------- 경로 끝 -------------------------------------------- -->

<!-- 소제목+본문 섹션 시작 -->
    <section class="ftco-section">
		<div class="container">
<!-- ------------------------------------------- 소제목 시작 ----------------------------------------- -->
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center mb-3">
     		<div class="col-md-7 text-center heading-section ftco-animate">
				<span class="subheading">차카차카</span>
           		<h2 class="mb-3">예약하기</h2>
          	</div>
		</div>
	</div>
</section>     		
<!-- -------------------------------------------- 소제목 끝 ------------------------------------------ -->
       		
       		
<!-- ---------------------- 본문 -------------------------------- -->
<!------------------ 대여일시, 반납일시--------------------------->
<form action="rsv_car.html" class="p-2 contact-form" method="post">
<div class="row d-flex justify-content-center">
	<div class="col-md-7 ">
		<div class="form-group">
			<h2> 📆 언제 필요하세요?</h2>
			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
				<span style="width: 20%;">대여일시</span>
				<input type="datetime-local" class="form-control" placeholder="2000. 01. 01" name="start_datetime">
			</p>
		</div>
		<div class="form-group">
			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
				<span style="width: 20%;">반납일시</span>
				<input type="datetime-local" class="form-control" placeholder="2000. 01. 01" name="end_datetime">
			</p>
		</div>
	</div>
</div>

<!------------------ 위치 선택 --------------------------->          
<div class="row d-flex justify-content-center">
	<div class="col-md-7">
		<div class="form-group">
			<h2> 🧭 어디에서 이용하세요?</h2>
	    	<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	    	<div id="map" style="width:625px;height:400px;"></div>
			<input type="text" class="form-control" placeholder="City, Station, etc">
	        </p>
		</div>
	</div>
</div>

<!------------------ 차량 종류 선택 ---------------------------> 
<div class="row d-flex justify-content-center">
	<div class="col-md-7 ">
		<div class="form-group">
			<h2> 🚘 어떤 차량을 원하세요?</h2>
			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
				<span style="width: 20%;">차량 선택</span> 
				<select name="questType" id="select1" onchange="chnQnaType(this.value)">
					<option value="small">소형</option>
					<option value="medium">중형</option>
					<option value="large">대형</option>
				</select>
				<select id="schQnaType" name="schQnaType"   style="width:120px; display:none;">
				</select>
			</p>
		</div>
		<div class="form-group text-center">
			<input type="submit" value="예약하기" class="btn btn-primary py-3 px-5">
		</div>
	</div>
</div> 
</form>
    
          
<!-- 소제목+본문 섹션 끝 -->
       </div>
    </section>
<!-- ------------------------------------------- 카카오 지도 시작 ------------------------------------------- -->
<script type="text/javascript">
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);
</script>
<!-- ------------------------------------------- 카카오 지도 끝 ------------------------------------------- -->
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
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">GH</a>
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
  <script src="js/main.js"></script>
    
  </body>
</html>