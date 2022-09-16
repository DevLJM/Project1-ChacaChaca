<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>문의하기</title>
    <meta charset="utf-8">
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
    <!-- 메뉴바 css  -->
	<style>
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
	          <li class="nav-item"><a href="about.html" class="nav-link">이용안내</a></li>
	          <li class="nav-item"><a href="services.html" class="nav-link">요금안내</a></li>
	          <li class="nav-item"><a href="pricing.html" class="nav-link">예약하기</a></li>
	          <li class="nav-item active"><a href="car.html" class="nav-link">고객센터</a></li>
	          <li class="nav-item"><a href="login.html" class="nav-link">마이페이지</a></li>
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
          							<span>고객센터 <i class="ion-ios-arrow-forward"></i></span></p>
            						<h1 class="mb-3 bread">문의하기</h1>
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
           				<h2 class="mb-3">문의하기</h2>
          		</div>
       		</div>

<!--좌측 메뉴바  -->

<nav id="nav">
            <ul>
                <li><a href="#" onclick="location.href='review.html'">이용후기</a></li>
                <li><a href="#" onclick="location.href='contact.html'">문의하기</a></li>
            </ul>
    </nav>


<!--좌측 메뉴바 -->
	<!-- <h1>contactContent.jsp</h1> -->
<!-- ---------------------- 본문 -------------------------------- -->
			<section class="ftco-section" style="padding-bottom: 0em;">
		      <div class="container">
		      <!-- <hr style="padding: 0;"> -->
		      <div style="text-align: center; font-weight: bold; font-size: 20px; background-color:#CEE5D0; height: 60px; line-height:60px; padding: 0;">${dto.subject }</div>
		        <!-- <hr style="padding: 0;"> -->
			        <div class="row d-flex justify-content-center">
			          <div class="col-md-12 text-center d-flex ftco-animate fadeInUp ftco-animated">
			          	<div class="blog-entry justify-content-end mb-md-5">
			              <div class="text px-md-5 pt-4">
			              	<div class="meta mb-3">
			              	<input type="hidden" value=${dto.password }>
			                  <div>글번호: ${dto.bno } &nbsp</div> 
			                  <div>작성자: ${dto.name } &nbsp</div>
			                  <div>${dto.date }</div>
			                  <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 0</a></div>
			                </div>
			                <h3 class="heading mt-2">
				               
			                </h3>
			                <p>${dto.content }</p>
			              	<a href="#" class="block-20 img" style="background-image: url('images/image_1.jpg');">${dto.file }</a>
<!-- 			                <p><a href="blog-single.html" class="btn btn-primary">Continue <span class="icon-long-arrow-right"></span></a></p> -->
			              	<br>
			              	<input type="button" value="수정" onclick="location.href='./ContactUpdate.bo?bno=${dto.bno}&pageNum=${pageNum}';">
							<input type="button" value="삭제" onclick="location.href='./ContactDelete.bo?bno=${dto.bno}&pageNum=${pageNum}';">
							<!-- //<input type="button" value="답글"> -->
							<input type="button" value="목록" onclick="location.href='./ContactList.bo?pageNum=${pageNum}';">
			              
			              </div>
			            </div>
			          </div>
		       	</div> <!-- class="row -->
		      </div> <!-- class="container" -->
		    </section>


		</div>
	</section>






<%-- 
			<table border="1">
      <tr>
        <td>글번호</td>
        <td>${dto.bno }</td>
        <td>조회수</td>
        <td>${dto.readcount }</td>
      </tr>
      <tr>
        <td>작성자</td>
        <td>${dto.name }</td>
        <td>작성일</td>
        <td>${dto.date }</td>
      </tr>
      <tr>
      	<td>제목</td>
      	<td colspan="3">${dto.subject }</td>
      </tr>
      <tr>
      	<td>내용</td>
      	<td colspan="3">${dto.content }</td>
      </tr>
      <tr>
      	<td>첨부파일</td>
      	<td colspan="3">${dto.file }</td>
      </tr>
      <tr>
      	<td><input type="button" value="수정" onclick="location.href='./ContactUpdate.cot?bno=${dto.bno}&pageNum=${pageNum}';"></td>
      	<td><input type="submit" value="삭제"></td>
<!--       	<td><input type="submit" value="답글"></td> -->
      	<td>
      		<input type="submit" value="목록" 
      		onclick="location.href='./ContactList.cot?pageNum=${pageNum}';">
      				<!-- 게시글 클릭 후 게시글 정보 뜨면 bno와 pageNum를 가지고 이동 (주소창에) -->
      	</td>
      </tr>
     </table>
     --%>
     <!-- ---------------------- 본문 -------------------------------- -->
     
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