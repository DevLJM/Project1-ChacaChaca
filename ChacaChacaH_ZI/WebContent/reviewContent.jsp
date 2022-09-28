<%@page import="com.chaca.review.db.CommentDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.chaca.review.db.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    
    <!-- 팝업창 열기 -->
<script type="text/javascript">
 	function openPopUp(bno) {
//  		alert(bno);
 		window.open("reviewPwCheck.jsp?bno="+bno, "pwCheckForm", "width=500, height=400, top=150, left=200");
 		
 	}
</script>


<!-- 팝업창 열기 -->
   
   
<!--    버튼 css -->
<style type="text/css">
.Bbtn {
  margin-top:100px;
  border: 2.5px solid ;
  border-radius: 6px;
  background-color: white;
  color: black;
  padding: 8px 18px;
  cursor: pointer;
}

.btn1 {

 background-color: #024a30;
  color: white;
}

.btn1:hover {
background-color: white;
    border-color: #024a30;
  color: #024a30;
}

.btn2 {
 background: #038454;
  color: white;
}

.btn2:hover {
background-color: white;
 border-color: #038454;
  color: #038454;
}

.btn3 {
 background: #04aa6d;
  color: white;
}

.btn3:hover {
background-color: white;
  border-color: #04aa6d;
  color: #04aa6d;
}

.btn4 {
  background: #05d086;
  color: white;
}

.btn4:hover {
background-color: white;
    border-color: #05d086;
  color: #05d086;
}

</style>
<!--    버튼 css -->
   
   
   
   
    
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
			<section class="ftco-section" style="padding-bottom: 0em; ">
		      <div class="container">
		        <hr>
			        <div class="row d-flex justify-content-center">
			          <div class="col-md-12 text-center d-flex ftco-animate fadeInUp ftco-animated">
			          	<div class="blog-entry justify-content-end mb-md-5">
			              <div class="text px-md-5 pt-4">
			              	<div class="meta mb-3">
			              	
			              	<table width="100%">
			              	
			                  <tr><td><div>글번호: ${dto.bno } &nbsp;</div></td> 
			                  <td><div>작성자: ${dto.name } (${dto.id }) &nbsp;</div></td>
			                  <td><div>${dto.date }</div></td>
			                </div>
			                <td><h3 class="heading mt-2">
				                <div class="star"> 
									<c:choose>
										<c:when test="${dto.rate eq 1 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 2 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 3 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 4 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i> 
										</c:when>
										<c:when test="${dto.rate eq 5}">
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
										</c:when>
									</c:choose>
								</div>
			                </h3>
			                </td>
			                </tr>
			                <tr><td colspan="4" style="padding: 50px; color: black;"><p>${dto.content }</p></td></tr>
			                </table>
							<!--   첨부파일 코드 -->
							<c:if test="${dto.file ne null }">
							<img src="./upload/${dto.file }" width="80%" height="80%">			                
			                <p><a href="./upload/${dto.file }" download>${dto.file }</a></p>
			                </c:if>
			                
<!-- 			                <p><div class="btn btn-primary">Continue <span class="icon-long-arrow-right"></span></a></p> -->
			              	<br>
			              	<!-- /////////로그인아이디가 글쓴이 아이디와 일치할 때 글수정/글삭제 가능///// -->
<%-- 			              	<c:if test="${sessionScope.loginID eq dto.name }"> --%>
			              	<input type="button" class="Bbtn btn1" value="수 정" onclick="location.href='./FileBoardUpdate.bo?bno=${dto.bno}&pageNum=${pageNum}';"> 
							<input type="button" class="Bbtn btn2" value="삭 제" onclick="openPopUp(${dto.bno})" >
<%-- 			              	</c:if> --%>
			              	<!-- /////////로그인아이디가 글쓴이 아이디와 일치할 때 글수정/글삭제 가능///// -->
<!-- 							<input type="button" class="btn btn3" value="답글"> -->
							<input type="button" class="Bbtn btn4" value="목 록" onclick="location.href='./BoardList.bo?pageNum=${pageNum}';">
			              </div>
			            </div>
			          </div>
		       	</div> <!-- class="row -->
		      </div> <!-- class="container" -->
		      
		      
		      		      <!-- ----------------------- 댓글 리스트 구간 --------------------------------- -->
				<%
					BoardDAO dao = new BoardDAO();
					int bno = Integer.parseInt(request.getParameter("bno"));
					List<CommentDTO> cmtList = dao.getCommentList(bno);
					request.setAttribute("cmtList", cmtList);
				%>
				
						<input type="hidden" name="c_bno" value="${cdto.c_bno }">
<section style="width: 40%; height: 40%">
				<div class="pt-5 mt-5">
					<h6 class="mb-5">댓글</h6>
					<ul class="comment-list">
						<c:forEach var="cdto" items="${cmtList }">
							<li class="comment">
								<div class="vcard bio">
									<img src="./images/Chacalogo.jpg" alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>${cdto.name }</h3>
									<div class="meta">
										<fmt:formatDate value="${cdto.date }"
											pattern="yyyy.MM.dd hh:mm" />
									</div>
									<p>${cdto.content }</p>
									<!-- <p> <a href="#" class="reply">Reply</a> </p> -->
								<%-- 
								</div> <input type="button" value="수정"
											onclick="location.href='./CommentUpdate.bo?c_bno=${cdto.c_bno}';">
								<input type="button" value="삭제" onclick="location.href='#';">
								 --%>
							</li>
						</c:forEach>
					</ul>
				</div>

				<!-- ----------------------- 댓글 리스트 구간 끝^^ --------------------------------- -->
				
		      
				<!-- ----------------------- 댓글 작성 구간^^ --------------------------------- -->

				<div class="comment-form-wrap pt-5" style="width: 100%; ">
					<h6 class="mb-5">댓글을 남겨주세요</h6>
					<form action="./CommentWrite.bo" method="post" name="frm" class="p-5 bg-light" style="width: 240%;">
					      		<input type="hidden" name="pageNum" value="${pageNum }"> <!-- 굳이 필요한감? -->
								<input type="hidden" name="bno" value="${dto.bno }">  <!-- bno : 메인 글의 bno!! (BoardDTO의 bno!!!!) 여기가 중요 ★★★-->
						<div class="form-group">
							<label for="name">이름 *</label> <input type="text"
								class="form-control" id="name" name="name">
						</div>
						<div class="form-group">
							<label for="message">내용</label>
							<textarea name="content" id="message" cols="7" rows="4" class="form-control"></textarea>
						</div>
						<div class="btn btn-primary" >
							<input type="submit" value="댓글 달기😘"
								class="btn py-3 px-4 btn-primary" name="cmd" > <!-- cmd.. 의미가 있나 -->
						</div>
						
					</form>
				</div>
				</section>
				<!-- ----------------------- 댓글 작성 구간 끝^^ --------------------------------- -->
		      
		      
		      
		      
		      
		      
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