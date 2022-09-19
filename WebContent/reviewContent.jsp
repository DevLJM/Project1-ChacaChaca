<%@page import="com.chaca.review.db.CommentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.chaca.review.db.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="info.html" class="nav-link">이용안내</a></li>
	          <li class="nav-item"><a href="services.html" class="nav-link">요금안내</a></li>
	          <li class="nav-item"><a href="pricing.html" class="nav-link">예약하기</a></li>
	          <li class="nav-item active"><a href="review.jsp" class="nav-link">고객센터</a></li>
	          <li class="nav-item"><a href="joinUpdate.html" class="nav-link">마이페이지</a></li>
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
					<li><a href="./BoardList.bo" onclick="location.href='review.jsp'">이용후기</a></li>
					<li><a href="#" onclick="location.href='contact.html'">문의하기</a></li>
				</ul>
			</nav>
			<!--좌측 메뉴바 -->


			<!-- ---------------------- 본문 -------------------------------- -->
			<section class="ftco-section" style="padding-bottom: 0em;">
		      <div class="container">
		        <hr>
			        <div class="row d-flex justify-content-center">
			          <div class="col-md-12 text-center d-flex ftco-animate fadeInUp ftco-animated">
			          	<div class="blog-entry justify-content-end mb-md-5">
			              <div class="text px-md-5 pt-4">
			              	<div class="meta mb-3">
			                  <div>글번호: ${dto.bno } &nbsp</div> 
			                  <div>작성자: ${dto.name } (${dto.id }) &nbsp</div>
			                  <div>${dto.date }</div>
			                  
			                </div>
			                <h3 class="heading mt-2">
				                <div class="star"> 
									<c:choose>
										<c:when test="${dto.rate eq 1 }">
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 2 }">
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 3 }">
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 4 }">
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i> 
										</c:when>
										<c:when test="${dto.rate eq 5}">
											<i class="ion-ios-star"></i>
											<i class="ion-ios-star"></i>
											<i class="ion-ios-star"></i>
											<i class="ion-ios-star"></i>
											<i class="ion-ios-star"></i>
										</c:when>
									</c:choose>
								</div>
			                </h3>
			                <p>${dto.content }</p>
			              	<a href="#" class="block-20 img" style="background-image: url('images/image_1.jpg');">${dto.file }</a>
<!-- 			                <p><a href="blog-single.html" class="btn btn-primary">Continue <span class="icon-long-arrow-right"></span></a></p> -->
			              	<br>
			              	<input type="button" value="수정" onclick="location.href='./BoardUpdate.bo?bno=${dto.bno}&pageNum=${pageNum}';"> 
			              																			<!-- 잠만,, 여기 안 해서???? -->
							<input type="button" value="삭제">
							<input type="button" value="답글">
							<input type="button" value="목록" onclick="location.href='./BoardList.bo?pageNum=${pageNum}';">
			              
			              </div>
			            </div>
			          </div>
		       	</div> <!-- class="row -->
		      </div> <!-- class="container" -->
		      
				<!-- ----------------------- 댓글 작성 구간^^ --------------------------------- -->
		      	<form action="./CommentWrite.bo" method="post" name="frm" >
		      		<input type="hidden" name="pageNum" value="${pageNum }"> <!-- 굳이 필요한감? -->
					<input type="hidden" name="bno" value="${dto.bno }">  <!-- bno : 메인 글의 bno!! (BoardDTO의 bno!!!!) 여기가 중요 ★★★-->
					
					<table>
						<tr>
							<th colspan="2"> 댓글</th>
						</tr>
						<tr>
							<td width="100"> 이름 </td>
							<td width="150"> <input type="text" name="name"> </td>
						</tr>
						<tr>
							<td> 내용 </td>
							<td> <textarea rows="5" cols="60" name="content"></textarea> </td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="댓글 작성" name="cmd">
								<input type="reset" value="리셋">
							</td>
						</tr>
					</table>
				</form>
				<!-- ----------------------- 댓글 작성 구간 끝^^ --------------------------------- -->
				
				<br>
				<hr>
					
				<!-- ----------------------- 댓글 리스트 구간 --------------------------------- -->
				<%
					BoardDAO dao = new BoardDAO();
					int bno = Integer.parseInt(request.getParameter("bno"));
					List<CommentDTO> cmtList = dao.getCommentList(bno);
					request.setAttribute("cmtList", cmtList);
				%>
				
						<input type="hidden" name="c_bno" value="${cdto.c_bno }">
				<c:forEach var="cdto" items="${cmtList }">
					<table width="60%" style="border: 1px solid gray">
						<tr>
							<td> name: ${cdto.name } </td>
							<td align="right"> <fmt:formatDate value="${cdto.date }" pattern="yyyy.MM.dd hh:mm"/>
						</tr>
						<tr height="60px">
							<td colspan="2"> content: <br> ${cdto.content } </td>
						</tr>
					</table>
				</c:forEach>
						<input type="button" value="수정" onclick="location.href='./CommentUpdate.bo?c_bno=${cdto.c_bno}';">
						<input type="button" value="삭제" onclick="location.href='#';">
				
				<!-- ----------------------- 댓글 리스트 구간 끝^^ --------------------------------- -->



				<div class="pt-5 mt-5">
					<h3 class="mb-5">6 Comments</h3>
					<ul class="comment-list">
						<li class="comment">
							<div class="vcard bio">
								<img src="images/person_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>John Doe</h3>
								<div class="meta">Oct. 29, 2019 at 1:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>
						</li>

						<li class="comment">
							<div class="vcard bio">
								<img src="images/person_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>John Doe</h3>
								<div class="meta">Oct. 29, 2019 at 1:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>

							<ul class="children">
								<li class="comment">
									<div class="vcard bio">
										<img src="images/person_1.jpg" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">Oct. 29, 2019 at 1:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Pariatur quidem laborum necessitatibus, ipsam impedit
											vitae autem, eum officia, fugiat saepe enim sapiente iste
											iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>
								<li class="comment">
									<div class="vcard bio">
										<img src="images/person_1.jpg" alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">Oct. 29, 2019 at 1:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Pariatur quidem laborum necessitatibus, ipsam impedit
											vitae autem, eum officia, fugiat saepe enim sapiente iste
											iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>
								</li>
							</ul> <!-- END comment-list -->

							<div class="comment-form-wrap pt-5">
								<h3 class="mb-5">Leave a comment</h3>
								<form action="#" class="p-5 bg-light">
									<div class="form-group">
										<label for="name">Name *</label> <input type="text"
											class="form-control" id="name">
									</div>
									<div class="form-group">
										<label for="email">Email *</label> <input type="email"
											class="form-control" id="email">
									</div>
									<div class="form-group">
										<label for="website">Website</label> <input type="url"
											class="form-control" id="website">
									</div>

									<div class="form-group">
										<label for="message">Message</label>
										<textarea name="" id="message" cols="30" rows="10"
											class="form-control"></textarea>
									</div>
									<div class="form-group">
										<input type="submit" value="Post Comment"
											class="btn py-3 px-4 btn-primary">
									</div>

								</form>
							</div>
				</div>






			</section>


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