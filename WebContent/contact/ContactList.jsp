<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	/* 본문 스타일  ==================================== */
	body {
  padding:1.5em;
  background: #f5f5f5
}

table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
}

th {
  text-align: left;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #fff;
}

a {
  color: #73685d;
}
  
 @media all and (max-width: 768px) {
    
  table, td, tr {
    display: block;
  }
  
/*   th {
    text-align: right;
  } */
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
/*   
  thead {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
   */
  tr {
    display: inline-block;
    vertical-align: top;
  }
/*   
  th {
    border-bottom: 1px solid #a39485;
  } */
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }

  
  }
	
	/* 본문 스타일  ==================================== */
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

<!-- 본문  -->

	<!-- EL/JSTL 사용  -->
	
<br>
<br>
   <table border="1" id="mainWrapper" >
      <tr style="text-align: center; font-weight: bold; color:#fff;">
        <td style="background-color: #CEE5D0;">번호</td>
        <td style="background-color: #CEE5D0;">제목</td>
        <td style="background-color: #CEE5D0;">글쓴이</td>
        <td style="background-color: #CEE5D0;">조회수</td>
        <td style="background-color: #CEE5D0;">작성일</td>
        <td style="background-color: #CEE5D0;">IP</td>
      </tr>
      
      <c:forEach var="dto" items="${boardList}" >
      
	      <tr>
	       <!--제목 누를 시 해당 주소로 이동 -->
	        <td>${dto.bno}</td>
	        <td>
	       <a href="./ContactContent.bo?bno=${dto.bno}&pageNum=${requestScope.pageNum}">${dto.subject }</a>
	       <!-- 전체 글 번호와 페이지번호 주소창에 표시 -->
	       </td>
	        <td>${dto.name }</td>
	        <td>${dto.readcount }</td>
	        <td>${dto.date}</td>
	        <td>${dto.ip }</td>
	      </tr>
      </c:forEach>
      
   
   </table>
		
		
		<%-- <br>
		<c:if test="${cnt!=0}">
		
			<c:if test="${startPage > pageBlock }">
				   <a href="./ContactList.bo?pageNum=${startPage-pageBlock}">[이전]</a>			
			</c:if>
			
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
					  <a href="./ContactList.bo?pageNum=${ i}">[${i }]</a> 
			</c:forEach>
			
			<c:if test="${endPage <pageCount }">
					   <a href="./ContactList.bo?pageNum=${startPage+pageBlock}">[다음]</a>
			</c:if>
		
		</c:if>
		
		<br>
		<br> --%>
<!-- ===========================페이징 넣어보기 ======================= -->
<br>
			<div class="row" style="width: 100%;  " >
				<div class="col-md-12">
					<div class="row mt-5">
						<div class="col text-center" style="width: 1000px">
							<div class="block-27">
								<c:if test="${cnt != 0 }">
									<ul>
										<li><c:if test="${startPage > pageBlock }">
												<a href="./ContactList.bo?pageNum=${startPage-pageBlock}">&lt;</a>
											</c:if></li>

										<li class=""><c:forEach var="i" begin="${startPage }"
												end="${endPage }" step="1">
												<a href="./ContactList.bo?pageNum=${i }">${i }</a>
											</c:forEach></li>

										<li><c:if test="${endPage < pageCount }">
												<a href="./ContactList.bo?pageNum=${startPage+pageBlock }">&gt;</a>
											</c:if></li>
									</ul>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-------------- 페이징 처리 -------------- -->

			<br>
<!-- ===========================페이징 넣어보기 ======================= -->
<!-- 본문  -->

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