<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입약관 | 샘플페이지</title>


<link rel="stylesheet" href="http://moden939.gabia.io/css/default.css?ver=171253">
<link rel="stylesheet" href="http://moden939.gabia.io/skin/member/basic/style.css?ver=171253">
<link rel="stylesheet" href="http://moden939.gabia.io/skin/member/basic/style2.css?ver=171253">


<script src="http://moden939.gabia.io/js/jquery-1.8.3.min.js"></script>
<script src="http://moden939.gabia.io/js/jquery.menu.js?ver=171253"></script>
<link rel="stylesheet" href="http://moden939.gabia.io/js/font-awesome/css/font-awesome.min.css">
</head>
<body>


<style>
body { background: #fff; ; }
h1, h2, h3, h4, h5, h6, input, button, textarea, select {font-family: 'Noto Sans KR', sans-serif;}
#gnb .gnb_wrap { width: 100%; }
#wrapper { margin: 20px auto 100px; font-family: 'Noto Sans KR', sans-serif }

.sctt { display: block; margin: 100px 0 60px; font-size: 30px; color: #1f284f; font-weight: 400; line-height: 1; text-align: center; }
.sctt:after { content: ""; display: block; width: 27px; height: 2px; margin: 30px auto; background: #43508b; }
</style>


<script>
    $(function(){
        $(".gnb_menu_btn").click(function(){
            $("#gnb_all").show();
        });
        $(".gnb_close_btn").click(function(){
            $("#gnb_all").hide();
        });
    });
</script>

<!-- 콘텐츠 시작 { -->
<div id="wrapper">
    <div id="container_wr">

<style>
body { background: #f2f2f2; }
</style>

<h2 class="regi_tt">차카차카 이용약관 및 개인정보활용 동의</h2>

<!-- 회원가입약관 동의 시작 { -->
<div id="register_agree">
	<h3>차카차카 이용약관 및 개인정보활용 동의</h3>

    
    <form  name="fregister" id="fregister" action="http://moden939.gabia.io/bbs/register_form2.php" onsubmit="return fregister_submit(this);" method="POST" autocomplete="off">

    <!-- <p style="margin: 10px 0;">회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.</p> -->
    <div id="fregister_chkall" class="checks2">
		<input type="checkbox" name="chk_all"  value="1"  id="chk_all">
        <label for="chk_all">차카차카에 신뢰 백프러</label>
    </div>

    <section id="fregister_term">
		<div class="fregister_agree2 checks2">            
            <input type="checkbox" name="agree" value="1" id="agree11">
			<label for="agree11">이용약관 동의<span>(필수)</span></label>
        </div>
        
        <textarea readonly>제1조(목적) 이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
 
  ② “몰”과 이용자 간에 제기된 전자상거래 소송에는 한국법을 적용합니다.
 </textarea>
        
    </section>

    <section id="fregister_private">
        <fieldset class="fregister_agree2 checks2">            
            <input type="checkbox" name="agree2" value="1" id="agree21">
			<label for="agree21">개인정보 수집 및 이용 동의<span>(필수)</span></label>
        </fieldset>

		<textarea readonly>개인정보처리방침

[차례]
1. 총칙
2. 개인정보 수집에 대한 동의
3. 개인정보의 수집 및 이용목적
4. 수집하는 개인정보 항목
1) 공고일자 : 2018년 05월 01일
2) 시행일자 : 2018년 05월 01일 </textarea>
    </section>

    <div class="btn_confirm">
		<a href="" class="btn_cancel">취소</a>
        <input type="submit" class="btn_submit" value="결제???" id="btn_submit">
    </div>

    </form>

    <script>
    function fregister_submit(f)
    {
        if (!f.agree.checked) {
            alert("필수 약관의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree.focus();
            return false;
        }

        if (!f.agree2.checked) {
            alert("필수 약관2의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree2.focus();
            return false;
        }

        return true;
    }
    
    jQuery(function($){
        // 모두선택
        $("input[name=chk_all]").click(function() {
            if ($(this).prop('checked')) {
                $("input[name^=agree]").prop('checked', true);
            } else {
                $("input[name^=agree]").prop("checked", false);
            }
        });
    });

    </script>
</div>
<!-- } 회원가입 약관 동의 끝 -->



</body>
</html>
