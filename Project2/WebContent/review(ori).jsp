<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>이용후기</title>
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
	          <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="info.jsp" class="nav-link">이용안내</a></li>
	          <li class="nav-item"><a href="services.jsp" class="nav-link">요금안내</a></li>
	          <li class="nav-item"><a href="pricing.jsp" class="nav-link">예약하기</a></li>
	          <li class="nav-item active"><a href="reviewIndex.jsp" class="nav-link">고객센터</a></li>
	          <li class="nav-item"><a href="joinUpdate.jsp" class="nav-link">마이페이지</a></li>
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
            						<h1 class="mb-3 bread">이용후기</h1>
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
					<h2 class="mb-3">이용후기</h2>
				</div>
			</div>

			<!--좌측 메뉴바  -->

			<nav id="nav">
				<ul>
					<li><a href="#" onclick="location.href='reviewIndex.jsp'">이용후기</a></li>
					<li><a href="#" onclick="location.href='contact.html'">문의하기</a></li>
				</ul>
			</nav>


			<!--좌측 메뉴바 -->


			<!-- ---------------------- 본문 -------------------------------- -->


			<div class="row">
				<div class="col-md-12 pills">
					<div class="bd-example bd-example-tabs">
						<div class="d-flex justify-content-center"></div>


						<hr>
						<br> <br>
						<div class="row">
							<div class="col-md-7">
								<h3 class="head">최근 작성된 이용후기</h3>
								<div class="review d-flex">
									<div class="user-img"
										style="background-image: url(images/person_1.jpg)"></div>
									<div class="desc">
										<h4>
											<span class="text-left">정지윤</span> <span class="text-right">2022년
												5월 26일</span>
										</h4>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i>
											</span> <span class="text-right"><a href="#" class="reply"><i
													class="icon-reply"></i></a></span>
										</p>
										<p>원래 다른 카쉐어링 서비스를 이용했엇는데 차카차카가 한 번 써보고 완전 여기에 정착했어요!! 서비스
											사용 가능한 지점도 여러 곳에 있고 쿠폰이랑 포인트 적립 제도도 잘 되어 있어서 타 서비스 대비 훨씬 더
											저렴하게 이용가능해서 만족스러워요 +) 차카차카 이름도 귀여워요❤</p>
										<span class="text-right">
											<input type="button" value="수정" onclick="#">
											<input type="button" value="삭제" onclick="#">
											<input type="button" value="답글" onclick="#">
										</span>
									</div>
								</div>
								<div class="review d-flex">
									<div class="user-img"
										style="background-image: url(images/person_2.jpg)"></div>
									<div class="desc">
										<h4>
											<span class="text-left">정규태</span> <span class="text-right">2022년
												5월 23일</span>
										</h4>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i>
											</span> <span class="text-right"><a href="#" class="reply"><i
													class="icon-reply"></i></a></span>
										</p>
										<p>신규회원 쿠폰 이벤트가 있어서 이번에 처음 이용해봤는데 사이트가 사용하기 편리해서 첫 방문이었지만
											수월하게 예약과 결제를 할 수 있었습니다. 추천합니다~</p>
										<span class="text-right">
											<a href="#" class="">수정</a>
											<a href="#" class="">삭제</a>
											<a href="#" class="">답글</a>
										</span>
									</div>
								</div>
								<div class="review d-flex">
									<div class="user-img"
										style="background-image: url(images/person_3.jpg)"></div>
									<div class="desc">
										<h4>
											<span class="text-left">윤주영</span> <span class="text-right">2022년
												5월 21일</span>
										</h4>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i>
											</span> <span class="text-right"><a href="#" class="reply"><i
													class="icon-reply"></i></a></span>
										</p>
										<p>이번에 ChacaChaca에서 렌트한 차로 여행 다녀오고 후기 남겨요 급하게 렌트가 필요해서
											찾아보다가 ChacaChaca가 신규 업체지만 이용후기가 좋아서 사용해봤는데 정말 잘 사용하고 즐겁게 여행하고
											왔어요 사이트에서 예약 하기도 쉽고 결제도 간편결제로 빠르게 할 수 있어서 좋았어요</p>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="rating-wrap">
									<h3 class="head">이용후기 총 40건</h3>
									<div class="wrap">
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> (98%)
											</span> <span>후기 38건</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> (02%)
											</span> <span>후기 02건</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> (00%)
											</span> <span>후기 00건</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> (00%)
											</span> <span>후기 00건</span>
										</p>
										<p class="star">
											<span> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> <i
												class="ion-ios-star"></i> <i class="ion-ios-star"></i> (00%)
											</span> <span>후기 00건</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- ---------------------- 푸터 -------------------------------- -->
	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">
							<a href="#" class="logo">CHACA<span>CHACA</span></a>
						</h2>
						<p>
							당신의 곁에있는<br>가장 가깝고 착한 플랫폼,<br> 지금 차카차카 하세요!
						</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
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
								<li><span class="icon icon-map-marker"></span><span
									class="text">부산광역시<br> 분당구 센텀일로 95
								</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span
										class="text">+82 777 7777</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span
										class="text">info@yourchacachaca.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Eine</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
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