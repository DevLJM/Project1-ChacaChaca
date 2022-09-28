<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
if(check && g_hasNext){
	//이용약관 동의체크
	var term_checks = $('div.terms-listbox input:gt(0):checked').length;

	if(term_checks < 6){
		alert('이용약관을 동의하지 않으셨습니다. 이용약관을 미동의시 렌터카 서비스 이용이 불가능합니다.');
		var offset = $('div.terms-listbox').offset();
		$("html, body").animate({scrollTop: offset.top-200}, 10);
		return false;
	}else{
		// 최종적으로 면허 번호를 체크
		var licenseType = $("#licenseType").val();
		var licenseAvil = $("#licenseAvil").val();
		var licenseNo   = $("#licenseNo").val();
		var userNm      = $("#userNm").val();
		var birthday    = $("#birthday").val();
		
		if(licenseType == '106009'){
			alert("국제면허 예약은 고객센터로 문의 바랍니다. \n ☎1600-0660");
			var offset = $("[name=licenseType]").offset();
			$("html, body").animate({scrollTop: offset.top-200}, 10);
			return false;
		}
		
		$.ajax({
			url : '/billycar/rentcar/short/lcnsCheck.json',
			type : 'POST',
			dataType : 'json',
			data : {
				"channel"     :"BILLYCAR",
				"licenseType" : licenseType,
				"licenseNo"   : licenseNo,
				"userNm"      : userNm,
				"birthday"    : birthday
			},
			success : function(data) {
				console.log("CCCCCCCCC : ", data);
				
				if(data.LCNS_RTN_CD=="00"||data.LCNS_RTN_CD=="02"){
					
					$(':disabled').prop('disabled',false);
					
					if($("#corpNm").val() != ""){ //제휴
						setCouponParam();
						$("#reservForm").attr("action","/billycar/rentcar/short/reservation_corp_update.do?mode=RentProc");
					} else {
						$("#reservForm").attr("action","/billycar/rentcar/short/reservation_update.do?mode=RentProc");	
					}
					
					
					reserve_submit();
					
				}else{
					lcnResultMsg(data);
					setLcnsInput(false, false);
					return false;
				}
			}
		});
	}
	
}

</script>



</head>
<body>


<!-- 이용약관 Begin -->
				

<article>
	<!-- 이용약관 -->
	<div class="header-group">
		<h3>
			개인정보 제공 활용 동의
			<p>운전자 자격은 대여자격과 동일하며, 운전면허증을 지참하시고 지점에 방문해 주세요.</p>
		</h3>
	</div>
	<!-- header-group//end -->
	<div class="article-content">
		<div class="terms-listbox">
			<!-- header-group//end -->
			<div class="terms-list v3">
				<div class="terms-header">
					<h4>전체동의</h4>
					<span class="checkbox v2"> <input type="checkbox" id="term-check-all"> <label class="label" for="term-check-all">모두 동의</label> </span>
				</div>
			</div>
	
			<!-- terms-list//end -->
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>고유식별정보 수집 및 이용에 관한 동의 <strong class="cl-point1">(필수)</strong></h4>
					<span class="checkbox v2"> <input id="term-check-1" type="checkbox"> <label class="label" for="term-check-1">동의</label></span>
				</div>
				<div class="terms-content notice">
					<ul class="terms-content__listbox">
						<li class="color_bold"><span class="wg-bold">수집항목</span>
							<ul class="list-info v2">
								<!-- 20180516 -->
								<li class="wg-bold">면허종류, 면허번호, 면허 만료일, 면허 발급일</li>
							</ul>
						</li>
						<li><strong class="cl-bold">이용목적</strong>
							<ul class="list-info v2">
								<!-- 20180516 -->
								<li>서비스 이용에 따른 본인 식별 절차 및 차량 대여 자격 확인</li>
							</ul>
						</li>
						<li class="color_bold"><span class="wg-bold">보유 및
								이용기간</span>
							<ul class="list-info v2">
								<!-- 20180516 -->
								<li class="wg-bold">계약종료 후 1년</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
	
			<!-- terms-list//end -->
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>
						개인(신용)정보의 수집 항목 및 이용목적 <strong class="cl-point1">(필수)</strong>
					</h4>
					<span class="checkbox v2"> <input type="checkbox"
						id="term-check-2"> <label class="label"
						for="term-check-2">동의</label>
					</span>
				</div>
				<div class="terms-content notice">
					<table class="tb-cnt tb-my cnt-center">
						<colgroup><col width="25%;"><col width="45%"><col width="30%;"></colgroup>
						<thead>
							<tr>
								<th>수집 및 이용항목</th>
								<th>수집 및 이용목적</th>
								<th>보유 및 이용기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>이름, 생년월일, 휴대폰번호, 주소</td>
								<td style="text-align:left;">
									1. 구매계약 이행 및 서비스 제공에 따른 요금 정산/기타 채권 회수<br>
									2. 사고발생 시 손해배상 청구 및 보험처리	
								</td>
								<td>계약에 따른 거래관계의 종료 후 1년</td>
							</tr>
							<tr>
								<td>이름, 생년월일, 휴대폰번호, 카드정보(카드번호, CVC번호)</td>
								<td style="text-align:left;">계약 및 서비스 이용에 따른 요금 정산</td>
								<td>계약에 따른 거래관계의 종료 후 1년</td>
							</tr>
							<tr>
								<td>차량위치정보</td>
								<td style="text-align:left;">
									1. 렌터카의 도난, 분실 확인 및 회수<br>
									2. 임차인의 사전통지 없이 반환 거부 대응
								</td>
								<td>계약에 따른 거래관계의 종료 후 1년</td>
							</tr>
						</tbody>
					</table>
					<!-- <ul class="terms-content__listbox">
						<li><strong class="cl-bold">수집 및 이용 항목</strong>
							<ul class="list-info v2">
								<li>이름, 휴대폰번호, 생년월일, 이메일, 주소, 카드번호(신용카드 및 제휴 서비스카드 이용
									시)</li>
							</ul></li>
						<li><strong class="cl-bold">수집 및 이용 목적</strong>
							<ul class="list-info v2">
								<li>구매계약 이행 및 서비스 제공에 따른 요금 정산/기타 채권회수</li>
								<li>사고발생 시 손해배상 청구 및 보험처리</li>
							</ul></li>
						<li class="color_bold"><span class="wg-bold">보유 및
								이용기간</span>
							<ul class="list-info v2">
								<li class="wg-bold">계약종료 후 1년</li>
							</ul></li>
					</ul> -->
				</div>
			</div>
			
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>개인정보 제3자 제공 동의 <strong class="cl-point1">(필수)</strong></h4>
					<span class="checkbox v2">
	                                   <input type="checkbox" id="term-check-12" />
	                                   <label class="label" for="term-check-12">동의</label>
	                               </span>
				</div>
				<div class="terms-content notice">
					<!-- <ul class="terms-content__listbox">
						<li>
							<strong class="cl-bold">정보 제공받는 자</strong>
							<ul class="list-info v2">
								<li>경찰서, 지자체, 지자체 시설관리공단, 한국도로공사, 신용조회사 등</li>
							</ul>
						</li>
						<li>
							<strong class="cl-bold">제공하는 개인정보 항목</strong>
							<ul class="list-info v2">
								<li>성명, 상호, 사업자등록번호, 주소, 전화번호(휴대폰, 자택, 직장), 직장정보</li>
								<li>임대차계약서상 계약기간, 대여차량, 대여조건 등 일체의 계약정보(외국인은 국제운전면허번호, 여권번호, 국적)</li>
								<li>과태료 발생 정보</li>
							</ul>
						</li>
						<li>
							<strong class="cl-bold">제공받는 자의 이용목적</strong>
							<ul class="list-info v2">
								<li>미납 통행료 및 주차료 징수, 도로교통법 위반 과태료 부과 등</li>
								<li>계약종료 후 차량 미반납, 불법차량매각, 불법 제3자 담보 제공, 요금체납, 차량방치 후 도주, 손해배상금 지급 지연 등 고객의 귀책 사유로 회사에 손해를 발생시킨 경우 피해구제 및 동일한 피해로부터 피해방지 목적</li>
								<li>과태료 발생 정보 제공을 통한 사고 예방 및 사고 방지 등- 과태료 발생 정보 제공을 통한 사고 예방 및 사고 방지 등</li>
							</ul>
						</li>
						<li class="color_bold">
							<span class="wg-bold">개인정보의 보유 및 이용기간</span>
							<ul class="list-info v2">
								<li class="wg-bold">계약에 따른 거래관계의 종료 후 1년</li>
							</ul>
						</li>
					</ul> -->
					<table class="tb-cnt tb-my cnt-center">
						<colgroup><col width="25%;"><col width="25%"><col width="25%;"><col width="25%;"></colgroup>
						<thead>
							<tr>
								<th>제공받는 자</th>
								<th>제공하는 항목</th>
								<th>제공받는 자의 이용목적</th>
								<th>보유 및 이용기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>도로교통공단</td>
								<td>면허정보(면허종류, 면허번호, 면허 만료일, 면허 발급일)</td>
								<td>차량대여자격 확인</td>
								<td>자격 확인 완료 시 까지</td>
							</tr>
							<tr>
								<td rowspan="3">과태료 등 부과주체 <br><a href="#modal-policy-penalty" class="btn-modal btn btn-small btn-line4" id="moreInfoBtn">자세히보기</a></td>
								<td>이름, 휴대전화번호</td>
								<td>미납 통행료 및 주차료 등 도로교통법 위반 과태료 부과</td>
								<td>목적 달성 시 까지</td>
							</tr>
							<tr>
								<td>과태료 발생정보</td>
								<td>과태료 발생 안내 및 정보 제공을 통한 사고 예방/방지</td>
								<td>목적 달성 시 까지</td>
							</tr>
							<tr>
								<td>서비스 이용을 위한 일체의 계약정보(면허정보 포함)</td>
								<td>서비스 이용 종료 후 차량 미반납, 불법차량매각, 불법 제3자 담보제공, 요금체납, 차량방치 후 도주, 손해배상금지급지연 등 고객의 귀책사유로 회사에 손해를 발생시키는 경우 피해 구제 및 동일한 피해로부터 피해 방지 목적</td>
								<td>목적 달성 시 까지</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	
			<!-- terms-list//end -->
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>
						자동차 표준 대여 약관 동의 <strong class="cl-point1">(필수)</strong>
					</h4>
					<span class="checkbox v2"> <input type="checkbox"
						id="select-terms3"> <label class="label"
						for="select-terms3">동의</label>
					</span>
				</div>
				<div class="terms-content notice">
					<pre>									제1장   총칙
					            
					제1조 (약관의 목적 및 적용)
					1. SK렌터카㈜(이하 "회사"라 한다)는 이 약관(이하 "본 약관"이라 한다)에 따라 대여자동차(이하 "렌터카"라 한다)를 임차인에게 임대하고 임차인은 이를 임차한다.
					2. 본 약관은 회사와 임차인(공동임차인 포함) 사이에 체결되는 자동차 단기대여 계약(서면, 온라인, 스마트폰, 태블릿 PC 기타 전자문서를 통해서 제공되는 계약을 포함하며, 이하 "대여계약"이라 한다)에 있어, 회사와 임차인의 권리와 의무에 관한 사항을 규정함을 목적으로 한다.
					3. 회사는, 법령에 반하지 않는 범위에서 특약을 정할 수 있으며, 특약한 때에는 그 특약이 우선한다. 단, 그 특약은 반드시 문서(전자문서 포함)에 기재되어야 한다.
					4. 회사는 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”이라 한다) 등 관련 법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있다.
					
					제2장   대여계약
					
					제2조 (예약 및 취소)
					1. 임차인은 렌터카를 임차할 때에 미리 차종, 임대차 개시일자 및 개시시각, 임차장소, 반환장소, 운전자 기타 임차조건을 명시하고 예약할 수 있으며, 회사는 렌터카의 보유범위 내에서 예약에 응한다.
					2. 전항의 예약이 있는 경우 회사는 대여예정요금의 10% 범위 내에서 예약금을 청구할 수 있다.
					3. 임차인이 제1항의 예약내용을 변경하고자 할 때에는 사전에 회사의 승낙을 받아야 한다.
					4. 임차인이 제1항에 의하여 예약한 임차개시 시각으로부터 1시간 이상 경과하여도 대여계약을 체결하지 않을 때에는 예약은 취소되는 것으로 한다. 이 경우 예약금은 반환하지 않는다.
					
					제3조 (대여계약의 체결)
					1. 회사는 대여할 수 있는 렌터카가 없을 때 및 임차인이 제3항 각 호에 해당할 때를 제외하고 임차인의 신청에 의하여 대여계약을 체결한다. 이 경우 임차인은 회사가 제공한 태블릿 PC 등 전자기기를 통하여 서명을 할 수 있으며, 전자서명을 완료한 경우 계약의 승낙으로 간주되어 대여계약이 성립한다.
					2. 대여계약의 체결은 대여계약서에 의하며, 대여계약서에는 제2조 제1항의 임차조건을 명시하여야 한다.
					3. 회사는 임차인이 다음 각 호에 해당할 때에는 대여계약의 체결을 거절할 수 있으며, 이 경우 지급받은 예약금을 반환한다.
					① 임차인(임차인이 아닌 자가 대여계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이 조에서 같다)이 렌터카운전에 필요한 자격의 운전면허증을 소지하지 아니한 자와 만 21세 미만인 자. 다만, 사고발생의 빈도 및 보험적용요율 등을 감안하여 임차인의 연령 및 운전경력 등은 달리 정할 수 있다.
					② 신원확인이 불가능하거나 신원확인을 위한 회사의 질문이나 자료요구에 불응할 때
					③ 음주상태에 있을 때
					④ 마약, 각성제, 시너(신나) 등에 의한 중독상황이 의심되는 때
					⑤ 예약 당시 명시한 운전자와 렌터카 인수시의 운전자가 다를 때
					⑥ 과거 대여 시 대여요금 체납 이력이 있는 때
					⑦ 과거 대여 시 제18조 각 호 사항에 해당하는 행위를 한 이력이 있는 때
					⑧ 위 각 호에 준하는 사항으로서 대여계약의 체결을 거절할 만한 객관적인 사유가 있을 때
					
					제4조 (대여계약의 성립 등)
					1. 대여계약은 회사가 대여요금을 징수하고 임차인에게 렌터카를 인도한 때 효력이 발생한다. 이 때 예약금은 대여요금의 일부로 충당된다.
					2. 회사는 사고, 도난, 기타 회사의 귀책사유에 의하지 아니하는 사유로 인하여 예약차종의 렌터카를 대여할 수 없을 때에는 유사한 다른 차종의 렌터카(이하 ”대체렌터카”라 한다)를 대여할 수 있다.
					3. 전항에 의하여 대여하는 대체렌터카의 대여요금이 예약차종의 대여요금보다 비싸게 될 때에는 예약차종의 대여요금에 의하고 예약차종의 대여요금보다 싸게 될 때에는 당해 대체렌터카의 대여요금에 의한다.
					4. 임차인은 제2항에 의한 대체렌터카의 인수를 거절하고 예약을 취소할 수 있으며, 이 경우 회사는 임차인에게 예약금 전액을 반환한다.
					
					제5조 (대여계약의 해지)
					1. 회사는 임차인이 대여기간 중에 다음 각 호에 해당한 때에는 대여계약의 해지사유를 설명하고 즉시 대여계약을 해지하고 렌터카의 반환을 청구할 수 있다.
					① 임차인이 계약의 중요한 사항을 위반하여 계약을 유지하기 어려운 객관적인 사정이 존재할 때
					② 계약 당시 임차인이 제공한 개인정보, 운전자정보 등이 허위로 판명된 때
					③ 대여요금을 분할납부하기로 한 경우로서 대여기간 중 연체가 2기에 달한 때
					④ 임차인(임차인 아닌 자가 대여계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이항에서 같다)의 운전면허가 취소 또는 정지된 때
					⑤ 임차인이 교통사고를 야기한 때
					⑥ 제3조 제3항 각 호에 해당하게 되었을 때
					⑦ 제18조의 금지행위를 한 때
					⑧ 음주운전을 한 때									
					2. 임차인은 다음의 경우에 계약을 해지할 수 있다.
					① 렌터카가 임차인에게 인도되기 이전의 하자로 인하여 사용 불가능하게 된 때(제23조 3항에 의한 조치를 받은 경우는 제외)
					② 임차인의 사정에 의하여 해지하는 때
					
					제6조 (불가항력 사유로 인한 대여계약의 중도종료)
					1. 렌터카의 대여기간 중에 천재지변, 기타 불가항력 사유로 인하여 렌터카의 사용이 불능하게 된 때에는 대여계약은 종료된 것으로 한다.
					2. 임차인은 전항에 해당하게 된 때에는 그 뜻을 회사에 연락하여야 한다.
					
					제7조 (중도해지)
					1. 임차인은 임차기간 중에라도 회사의 동의 하에 대여계약을 해지할 수 있다.
					2. 임차인의 귀책사유로 인하여 렌터카의 사고 또는 고장으로 대여기간 중에 반환한 때에는 대여계약은 해지된다.
					
					제8조 (임차조건의 변경)
					1. 대여계약의 성립 후 제2조 제1항의 임차조건을 변경하고자 할 때에는 미리 회사에 승낙을 받아야 한다.
					2. 회사는 변경된 임차조건에 따라 업무를 수행하기 어려운 경우에는 전항에 의한 임차조건의 변경을 승낙하지 않을 수 있다.
					3. 임차인이 임차기간을 연장하고자 하는 경우에는 변경 후의 임차기간에 해당하는 대여요금을 지불해야 한다.
					
					제3장   대여자동차
					
					제9조 (자동차의 종류)
					1. 회사가 대여할 수 있는 자동차는 대여 및 회사 홈페이지(www.billycar.co.kr)에 대여용으로 게시된 자동차로 한다.
					2. 대여계약의 내용에 따라 렌터카에 네비게이션, 하이패스 단말기 등이 장착될 수 있고, 계약시점에 따라 공급제품이 변경될 수 있다.
					
					제10조 (보험가입 등)
					회사는 제3조 제2항에 의해 명시한 개시일자와 임차장소에 따라, 자동차손해배상보장법에 의한 책임보험과 자동차 종합보험(대인, 대물, 자손)에 가입되고 제15조에 부합하는 렌터카를 임차인에게 대여한다.
					
					제11조 (차량체크리스트작성 등)
					1. 회사는 임차인과 공동으로 점검표를 사용하여 인도 전 일상점검과 차체외관 및 차량운행에 필요한 기본공구의 적재여부 및 연료량을 확인한 다음 당해 렌터카를 대여한다.
					2. 회사는 전항의 확인에 있어 렌터카에 정비불량 등을 발견한 때에는 교환 등의 조치를 강구하고 그 내용을 기록∙유지하여야 한다.
					3. 회사는 렌터카를 인도한 때에는 자동차 임대계약서를 교부하고 주요내용을 설명하여야 한다.
					
					제12조 (운전자의 알선)
					1. 회사는 운전자를 알선하지 않는다. 다만, 법령의 규정에 의해 운전자를 알선할 수 있는 경우에는 임차인의 렌터카 사용에 불편이 없도록 성실한 운전자를 알선하여야 한다. 이때 알선 수수료는 받지 아니한다. 
					2. 제1항에 의하여 알선한 운전자의 신원은 회사가 보증하여야 한다.
					
					제4장   대여요금 등
					
					제13조 (대여요금 및 추가비용)
					1. 회사가 영수하는 대여요금은 회사가 게시한 대여요금표(회사의 홈페이지 및 인쇄물 등에 게시)를 기준으로 하며, 대여요금은 본 약관 제36조 차량손해면책제도 가입 수수료를 포함한다.
					2. 회사는 영업정책에 따라 회원, 임직원, 제휴사 등에 전항의 대여요금에 대해 별도의 인하 혜택을 제공하며, 탄력적으로 대여요금을 적용할 수 있다.
					3. 임차인은 임차인의 요구로 인하여 대여요금 외에 추가비용이 발생한 경우에는 그 추가비용을 부담하여야 한다.
					
					제14조 (요금의 수수방법)
					1. 임차인은 렌터카 인수 시에 소정의 예정대여요금을 선납한다.
					2. 사용기간 초과 등으로 선불요금에 부족이 있을 때에는 렌터카 반환 시에 정산한다.
					
					제5장   책임
					
					제15조 (정기점검의 의무 등)
					회사는 자동차관리법 제36조(자동차의 정비)의 정기점검 정비를 실시한 렌터카를 대여하여야 한다.
					
					제 16조 (임차인의 점검의무)
					1. 임차인은 임차기간 중 임차한 렌터카에 관하여, 매번 사용개시 전에 회사로부터 교부 받은 점검표에 의거 일상점검을 실시하여야 한다.
					2. 임차인은 제1항의 점검결과 이상이 발견된 경우에는 즉시 회사에 이를 통보하여야 한다.
					3. 임차인은 회사의 자동차 정기점검 요청 시 적극 협조하여야 한다.
					4. 임차인이 본 조의 점검의무를 불이행하여 회사 또는 제3자에게 손해가 발생한 경우, 임차인은 손해의 전부를 배상하고 회사를 면책시켜야 한다.
					
					제17조 (임차인의 관리책임)
					1. 임차인은 선량한 관리자의 주의의무를 가지고 렌터카를 사용하고 보관하여야 한다. 
					2. 전항의 관리 책임은 렌터카의 인도를 받은 시점부터 시작하여 회사에 반환한 시점에 끝난다.
					
					제18조 (금지행위)
					임차인은 렌터카의 임차기간 중에 다음의 행위를 하여서는 아니한다.
					1. 렌터카를 여객자동차운수사업 또는 이와 유사한 목적으로 사용하는 행위
					2. 렌터카 또는 렌터카에 장착된 부분품(네비게이션, 블랙박스, 하이패스 단말기 등)을 전대하거나 또는 담보에 제공하는 등 회사의 소유권을 침해하는 일체의 행위
					3. 렌터카의 차량번호를 위조 또는 변조하거나 렌터카를 개조 또는 개장하는 등 그 원상을 변경하는 행위
					4. 회사의 허락을 받지 아니하고 렌터카를 제3자의 운전연습에 제공하거나 각종시험 혹은 경기에 사용하거나 또는 다른 차를 견인하거나 견인에 준하는 행위
					5. 법령 또는 공서양속에 위반하여 렌터카를 사용하는 행위
					6. 대여계약서에 명시된 운전자 이외의 제3자 또는 무면허자에게 운전을 시키는 행위
					7. 운전자가 차량사고 후 특별한 사유(병원이송 등) 없이 사고처리(후속사고방지, 사고접수 등)를 하지 않고 사고현장을 이탈하는 행위
					8. 렌터카에 장착된 블랙박스에 기록된 영상을 해당 렌터카의 사고처리 목적 이외의 용도로 저장, 배포, 편집, 제공, 판매하는 등 관련 법령을 위반하는 일체의 행위
					9. 석유 및 석유대체연료 사업법 제2조 제10호의 규정에 의한 가짜석유제품을 렌터카의 연료로 사용하는 행위
					10. 위 각 호에 준하는 행위로 객관적으로 보아 그로 인하여 렌터카 또는 렌터카에 장착된 부분품(네비게이션, 블랙박스, 하이패스 단말기 등)을 손상시킬 우려가 있는 행위
					
					제19조 (배상책임)
					1. 임차인은 제18조의 해당되는 행위 또는 기타 임차인의 귀책사유로 인하여 회사 또는 제3자에게 손해를 끼쳤을 때에는 그 손해를 배상할 책임을 진다.
					2. 임차인이 교통법규위반 및 주정차 위반 등으로 인하여 부과 받은 과태료와 범칙금 등은 렌터카 반환 후에도 임차인이 부담하여야 한다.
					3. 제12조 제1항에 의하여 운전자를 알선 받은 임차인은, 임차인의 귀책사유가 없는 한, 제1항 및 제2항의 손해배상책임을 지지 아니한다.
					
					제6장   자동차사고 조치 등
					
					제20조 (사고처리) 
					1. 임차인은 렌터카에 또는 렌터카 운행으로 인한 사고가 발생한 때에는 관련 법령상의 조치를 취함과 동시에 다음의 정하는 바에 따라 처리하여야 한다.
					① 즉시 사고현황 등을 회사에 통보하여야 한다.
					② 당해 사고에 관하여 회사가 계약하고 있는 보험회사가 요청하는 서류 또는 증거의 제출에 협조하여야 한다.
					③ 당해 사고에 관하여 제3자와 합의를 할 때에는 미리 회사와 합의하여야 한다.
					④ 렌터카의 수리는 특별한 사유가 있는 경우를 제외하고 회사와 협의를 거쳐 정한 공장에서 시행하여야 한다.
					2. 임차인은 렌터카에 블랙박스(영상기록장치)가 장착된 경우, 렌터카의 사고처리 목적으로 기록된 사고영상을 회사 및 자동차보험 가입 보험회사, 기타 관계기관(경찰서 등)에서 요청 시 지체 없이 해당 영상을 원본 그대로 제공하여야 한다.
					3. 회사와 임차인은 각자 주어진 책임범위 내에서 사고해결을 위해 노력하고, 상호협조를 태만히 하여 상대방에게 손해를 입힌 경우에는 귀책사유에 따라 그 손해를 배상할 책임이 있다.
					4. 회사는 제1항 제4호에 따라 렌터카를 수리하는 경우 사전에 예상비용을 임차인에게 통지하고, 수리 후에는 소요된 비용을 임차인에게 청구한다.
					5. 임차인이 제1항 각 호의 어느 하나를 위반하거나 회사와 협의되지 아니한 곳으로 렌터카를 이동, 견인, 수리 등을 행하여 렌터카 운행에 지장이 초래되거나 재수리 등으로 추가비용이 발생하는 경우 이에 상응하는 비용은 임차인이 부담하여야 한다.
					
					제21조 (보험처리 등)
					1. 임차인(임차인 아닌 대여계약상 운전자 포함)은 사고발생 시 회사가 렌터카에 관하여 체결한 손해보험약관에 명시된 해석과 보상보장의 범위 내에서 보상∙보장(대인, 대물, 자손)의 혜택을 받는다. 다만, 다음 각 호의 경우와 보험회사 사고처리에 관련된 법규를 위반 시에는 보험보상의 일부 또는 전부를 받지 못한다.
					① 임차인의 고의 또는 중과실로 인한 손해
					② 무면허운전 사고로 인한 손해
					③ 렌터카를 여객자동차운수사업에 사용하거나 다시 제3자에게 전대하던 중 발생한 사고로 인한 손해
					④ 제3자의 수요에 응하여 렌터카를 사용하여 유상으로 여객을 운송 중 발생한 사고로 인한 손해
					⑤ 범죄를 목적으로 렌터카를 사용 중의 사고로 인한 손해
					⑥ 음주운전 중의 사고로 인한 손해
					⑦ 렌터카를 경기용이나 경기를 위한 연습용 또는 시험용으로 사용 중의 사고로 인한 손해
					⑧ 임차인(임차인과 동승자로 기록된 공동임차인 포함) 이외의 제3자가 렌터카를 운전하여 발생한 사고로 인한 손해
					⑨ 그 밖에 본 약관 및 관계법령을 위반하여 발생한 손해
					2. 종합보험 중 차량손해에 관한 보험가입은 임차인의 요청에 따라 선택할 수 있으며, 가입 시에는 보험약관에 의하여 사고 당시의 시가를 기준으로 실손해를 보상받는다. 다만, 임차인의 귀책사유로 인한 사고의 경우 제36조에서 정한 임차인 최대부담금 범위에서 임차인이 별도로 회사에 손해를 배상하여야 한다.
					3. 제2항의 차량손해보험에 가입하지 않았을 경우, 임차인의 귀책사유로 인한 손해가 발생하였을 때에는 사고차량의 수리비를, 수리가 불가능할 경우에는 사고 당시의 렌터카 시가를 기준으로 한 실손해를 임차인이 회사에 배상하여야 한다.
					4. 제1항 및 제2항의 보상금이 임차인이 부담하여야 할 손해배상금을 충당할 수 없을 때, 회사는 그 부족금 발생사유를 임차인에게 설명하고 손해범위 내에서 위 부족금을 청구할 수 있다.
					5. 대여계약이 종료되었음에도 임차인이 회사에 렌터카를 반환하지 않고 운행하다가 생긴 사고는 회사의 자동차보험 가입에도 불구하고 임차인이 손해배상책임을 져야 하며, 그 사고로 인하여 회사에 손해가 발생한 경우에는 임차인이 회사에 그 손해를 배상하여야 한다.
					
					제22조 (휴차손해부담)
					1. 임차인은 본인의 귀책사유로 인한 사고로 인하여 사고차량이 휴차할 경우에는, 수리 기간 중 휴차로 인한 회사의 실손해를 배상하여야 하고, 렌터카가 수리 불가능할 정도로 파손되거나 도난된 경우에는 렌터카의 재구매 및 등록 등에 소요되는 기간 동안의 영업손해를 배상하여야 한다.
					2. 회사는 전항에 의하여 임차인이 부담할 손해배상액을 정한 경우에는 회사의 평균 임차율 등을 감안한 객관적인 자료를 제시하여야 한다.
					3. 회사가 전항에 의한 객관적인 산정자료를 제시하지 않을 경우 임차인은 수리 기간 또는 재구매 및 등록에 소요되는 기간에 해당하는 대여요금의 50%를 부담한다. 이때 대여요금은 수리 기간 또는 재구매 및 등록에 소요되는 기간에 해당하는 1일 대여요금을 기준으로 산정하며, 이 때 대여요금의 기준은 사고가 발생한 날 회사 홈페이지(www.billycar.co.kr)에 게시된 대여요금(제휴 할인이 되지 않은 요금)을 기준으로 한다.
					
					제23조 (고장 등의 조치)
					1. 임차인은 임차 기간 중 렌터카의 이상 또는 고장을 발견한 때에는 즉시 운전을 중지하고 회사에 연락함과 동시에 회사의 지시에 따라야 한다.
					2. 렌터카의 이상 또는 고장이 임차인의 고의 또는 과실에 의하는 경우에는 임차인은 렌터카의 인수 및 수리에 소요되는 비용을 부담하여야 한다.
					3. 렌터카의 인수 전의 하자로 인하여 렌터카가 사용 불가능하게 되었을 때에는 임차인은 회사로부터 대체렌터카의 제공 또는 이에 준하는 조치를 받을 수 있다.
					4. 임차인이 제3항에서 정하는 조치를 받을 수 없거나 받지 않은 경우에는 회사는 임차인에게 이미 지급 받은 대여요금을 임차인에게 반환한다.
					
					제24조 (불가항력 사유로 인한 면책)
					1. 천재지변 기타 불가항력 사유로 인하여 임차인이 임차기간 내에 렌터카를 반환할 수 없을 경우에는 회사는 그로 인하여 발생하는 손해에 관하여 임차인의 책임을 묻지 아니한다. 임차인은 이때 즉시 회사에 연락하고 회사의 요청에 협조하여야 한다.
					2. 천재지변 기타 불가항력 사유로 인하여 회사가 렌터카 또는 대체렌터카를 제공할 수 없을 때에는 임차인은 그로 인하여 발생하는 손해에 관하여 회사의 책임을 묻지 아니한다. 이때 회사는 즉시 임차인에게 그 사실을 통지하여야 한다.
					
					제7장   취소 환불
					
					제25조 (예약의 취소)
					1. 임차인은 제2조의 예약을 하고 임차인의 사정으로 예약을 취소한 때 또는 대여계약을 체결하지 아니한 때에는 다음 각 호에 의하여 해약수수료를 지불하여야 한다.
					① 임차예정 일시로부터 24시간 이전에 예약을 취소하는 경우에는 회사는 지체 없이 예약금을 임차인에게 반환하여야 한다.
					② 임차예정 일시로부터 직전 24시간 내에 예약을 취소하는 경우에는 회사는 임차인에게 예약금을 반환하지 아니한다.③ 회사는 예약금을 수령한 후 회사의 사정으로 예약을 취소하거나 대여계약을 체결하지 못할 경우에는 고객에게 사유를 설명하고 예약금을 반환한다.
					④ 예약을 한 후 천재지변 등 불가항력적인 사유로 인하여 계약을 체결할 수 없게 된 경우에는 회사는 예약금을 임차인에게 반환한다.
					
					제26조 (중도해약수수료)
					임차인이 제5조 제2항 제2호 또는 제7조에 따른 중도해지를 한 때에는, 회사는 임차인으로부터 미리 받은 대여요금 중 렌터카를 실제 반환한 시점을 기준으로 계산한 대여요금과 잔여기간 대여요금의 10%에 해당하는 금원을 공제한 잔액을 환불하여야 한다.
	
					제27조 (대여요금의 환불액)
					1. 제5조 제2항 제1호에 의하여 임차인이 대여계약을 해지한 때에는 영수한 대여요금의 전액
					2. 제6조 제1항에 의하여 대여계약이 종료한 때에는 미리 받은 대여요금에서 렌터카가 반환되는 때까지의 기간에 상당한 대여요금을 공제한 잔액
					3. 제5조 제2항 제2호의 임차인의 사정으로 대여계약을 해지할 때에는 미리 받은 대여요금에서 렌터카를 반환한 때까지의 요금과 잔여기간 대여요금의 10%에 해당하는 금원을 공제한 잔액
					(다만, 6개월 이상 장기계약의 경우 회사와 임차인은 회사의 손실을 고려하여 중도해지시의 수수료를 별도로 약정한다.)
					
					제8장 반환
					
					제28조 (렌터카의 확인 등)
					1. 임차인은 렌터카를 회사에 반환할 때 통상적 사용으로 인한 마모를 제외하고 인도를 받았을 때 확인한 상태로 반환하여야 한다.
					2. 회사는 렌터카 반환 시 임차인의 입회 하에 렌터카의 상태를 확인한다. 회사와 임차인은 렌터카 반환 시 잔여 연료량과 과∙부족분에 대한 연료 대금을 서로 정산한다. 다만, 회사가 연료탱크에 연료를 100% 채워 인도한 경우 임차인은 연료탱크에 연료를 100% 채워 반환한다.
					3. 회사는 렌터카를 반환 받을 때에는 임차인 입회 하에 렌터카 안의 임차인 또는 동승자의 유류품 잔류 유무를 확인한다.
					
					제29조 (렌터카의 반환시기 등)
					1. 임차인은 약정한 대여기간 종료시점 또는 대여계약 중도해지시점 또는 제6조 종료시점에 렌터카를 회사에 반환하여야 한다.
					2. 임차인이 제8조 제1항에 의하여 임차기간을 연장할 때에는 변경 후의 임차기간에 해당하는 대여요금을 지불하여야 한다.
					
					제30조 (렌터카의 반환장소 등)
					1. 임차인은 제3조 제2항에 의하여 명기한 반환장소에서 렌터카를 반환하여야 한다. 다만 제8조 제1항에 의하여 반환장소를 변경한 때에는 변경후의 반환장소에서 반환하여야 한다.
					2. 임차인의 사정으로 반환장소가 변경되어 회사가 부담하여야 할 비용이 발생한 경우에는, 임차인이 그 회송비용을 부담하여야 한다.
					
					제31조 (반환하지 않을 경우의 조치)
					1. 회사는 임차인이 제29조 제1항에서 정하는 반환시점으로부터24시간을 경과하여도 반환장소에 렌터카의 반환을 하지 아니하거나 회사의 반환 청구에 응하지 않을 때 또는 임차인의 소재가 불명한 때에는 렌터카 회수 및 손해보전에 필요한 모든 법적 조치를 취할 수 있다.
					2. 회사는 제1항에 해당되는 경우 렌터카의 소재를 확인하기 위하여 임차인에게 전화를 하거나 주소지를 방문하여 함께 거주하는 가족 및 친족 등에게 청취조사를 할 수 있으며, 차량위치정보시스템의 작동 등 필요한 조치를 취할 수 있다. 다만, 회사가 차량위치정보 확인이 가능한 자동차를 대여할 경우에는 렌터카 인도 전에 그 사실을 고객에게 고지하고 확인을 받아야 한다.
					3. 회사는 제2항에 따른 조치를 취하였음에도 렌터카와 임차인의 소재가 불명한 때에는 도난신고 등 필요한 조치를 취할 수 있다.
					4. 임차인은 제29조 제1항에서 정하는 반환시점에 차량을 반납하지 않을 경우(제24조 제1항의 경우는 제외), 일대여료의 200%를 반납지연일수로 곱한 금액을 지급하여야 한다.
					5. 회사는 다음 각 호의 어느 하나에 해당하는 임차인의 계약위반으로 인한 동종 또는 유사한 피해를 방지하기 위하여, 계약시 관련 법령에 따라 수집∙이용목적, 수집항목, 보유 및 이용기간 등이 기재된 별도의 “개인정보 수집이용동의서” 및 개인정보를 제공받는 자, 목적, 항목, 보유 및 이용기간 등이 기대된 별도의 “제3자 제공동의서”에 동의를 받아, 피해가 발생한 경우에 한하여 동종 사업자 및 사업자단체에 개인정보를 제공할 수 있다.
					① 임차인이 회사의 렌터카 반환요구에도 불구하고 정당한 사유 없이 렌터카를 반환하지 않거나 연락이 되지 않는 상태에서 렌터카 반환일로부터 익일 영업시간 내에 반환하지 않은 경우
					② 임차인이 대여요금을 연체하여 회사가 상당한 기간 동안 2회 이상 납부를 최고하였음에도 계속 연체하고 있는 경우. 단, 고객에게 부득이한 사유가 있는 경우는 제외
					③ 렌터카를 불법 매매 또는 개조한 경우
					④ 차량번호판 위조 또는 렌터카를 범죄에 사용하는 등 불법행위에 이용한 경우
					⑤ 렌터카를 전대, 담보제공 또는 매각하는 등 회사의 소유권을 침해하는 일체의 행위를 한 경우
					⑥ 교통사고 후 도주 또는 렌터카를 방치한 경우
					⑦ 렌터카를 여객자동차운수사업 또는 이와 유사한 목적으로 사용한 경우
					⑧ 대여계약서상의 운전자 이외의 자 또는 무면허자가 운전을 하다가 사고가 발생한 경우
					⑨ 렌터카를 제3자의 운전연습에 제공하거나 대여계약의 목적 이외의 각종 시험∙경기에 사용한 경우
					⑩ 다른 차를 견인하거나 견인에 준하는 용도로 렌터카를 사용한 경우
					⑪ 위 각 호에 준하는 행위로 회사에 중대한 손해를 발생시키는 경우
					6. 회사는 제5항에 따라 제공받은 고객의 정보를 고객으로부터 동의 받은 목적과 다른 목적으로 이용할 수 없다.
					7. 회사가 제1항 내지 제6항에 의한 업무를 처리하는 과정에서 고의 또는 과실로 고객에게 손해를 입힌 경우에는 배상책임을 부담한다.
					8. 임차인이 계약종료 후 차량을 미반납할 경우에는 회사는 임차인을 횡령으로 고소 후 차량을 말소 등록할 수 있다.
					
					제9장 보칙
					
					제32조 (지연손해금)
					회사와 임차인이 본 약관에 기초한 금전채무의 이행을 지체한 때에는, 상대방에게 연(24%)의 비율에 따른 지연손해금을 지급하여야 한다.
					
					제33조 (계약의 세칙)
					1. 회사는 본 약관에 준하여 따로 세칙을 정할 수 있다.
					2. 회사는 따로 세칙을 정한 때에는 이를 회사의 영업소 및 홈페이지에 게시함과 동시에 회사가 시행하는 팸플릿 및 요금표에 기재한 후 본 약관과 함께 임차인에게 설명하여야 한다. 이를 변경한 경우에도 같다.
					
					제34조 (국 영문의 해석)국문과 영문의 약관의 해석에 차이가 있을 시에는 국문약관에 따른다.
					
					제10장 특약
					
					제35조 (임차인의 연령 및 운전경력)
					임차인이 운전할 수 있는 연령과 운전경력은 계약서 표지에 따르며, 회사는 계약서 표지에 맞추어 운전 연령과 운전경력을 제한할 수 있다.
					1. 운전경력은 임차인이 도로교통법상 유효한 운전먼혀증을 발급받은 날로부터 임차개시일까지의 기간을 말한다.
					2. 대여차량의 운전자는 본 조와 계약서 표지 조건을 충족하여야 한다.
					
					제36조 (차량손해면책제도)
					1. 임차인은 회사에 소정의 수수료를 지불하고 대여계약 시 전면 ”차량손해면책”항의 ”가입”란에 서명함으로써 제21조 제2항의 차량손해배상책임으로부터 면책된다. 단, 임차인 최대 부담금 범위 내에서는 임차인이 이를 부담하여야 하고, 제2항에 해당하는 경우에는 차량손해면책제도가 적용되지 않는다. 차량손해면책은 "일반자차면책" "PLUS자차면책" "SUPER자차면책", "완전자차면책"으로 구분되며, 임차인의 최대부담금의 한도는 다음과 같다.
					
					<table class="threesix">
						<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
						</colgroup>
						<caption style="text-align: right;">(사고건당)</caption>		
						<tbody>
							<tr>
								<td>종류</td>
								<td>일반자차면책</td>
								<td>PLUS자차면책</td>
								<td>SUPER자차면책</td>
								<td>완전자차면책</td>
							</tr>
							<tr>
								<td>임차인 최대 부담금</td>
								<td>500,000원(제주), 300,000원(내륙)</td>
								<td>100,000원</td>
								<td>50,000원</td>
								<td>없음</td>
							</tr>
					</table>
						※ 수입차량의 경우 내륙지점은 Plus 자차면책, Super자차면책, 완전자차면책 가입 불가 제주지역 지점은 Plus 자차면책, Super 자차면책 가입 불가
						※ 내륙지점은 완전자차면책 가입 불가하며, 제주지점은 Plus자차면책, Super자차면책 가입 불가
						
					
					2. 임차인이 제18조에 명시된 금지행위를 하였을 경우에는 차량손해면책제도가 적용되지 않는다.
					
					제37조 (소송)
					대여계약에 의한 자동차 대여에 관하여 분쟁이 발행한 때에는 민사소송법에 의한 관할 법원을 제1심 법원으로 한다.
					
					제38조 (신용조회)
					회사는 임차인에 대한 신용도, 신용거래능력 등에 대하여 신뢰할 수 없는 사정이 있는 경우 이에 대한 판단을 위하여 임차인의 동의 하에 신용상태를 조회, 확인할 수 있다.
					
					제11장 위치 정보 및 개인 정보 수집 이용 등
					
					제39조 (차량위치정보의 수집)
					대여계약에 따라 회사가 임차인에게 대여하는 렌터카에는 렌터카의 위치정보를 수집할 수 있는 단말기가 부착되어 있으며, 회사는 다음 각 호의 사유가 발생하는 경우 단말기를 통하여 렌터카의 위치정보를 수집할 수 있다.
					1. 임차인의 신고 등으로 렌터카가 도난 분실되었음이 확인되는 경우
					2. 대여계약서 상에 기재된 반환시각에서 6시간을 경과하였음에도 불구하고 임차인이 사전통지 없이 렌터카를 반환하지 않은 경우
					
					제40조 (회사의 계약 거절)
					회사는 임차인이 계약사항을 불이행 하거나 채무를 이행하지 않는 동안, 고객 정보를 보유할 수 있고, 임차인의 대여계약 체결 또는 렌터카 인도 요구를 거절할 수 있다.
					
					제41조 (개인정보의 보호)
					1. 회사는 임차인의 개인정보를 대여계약 이행 및 임차인이 별도 동의한 목적 범위 내에서 업무 목적으로 사용할 수 있다.
					2. 임차인은 회사에 제공한 개인정보와 관련하여 변경사항이 있는 경우에는 지체 없이 회사에 그 변경사실을 통지하여야 하며, 이를 위반하여 발생한 일체의 손해에 대하여 회사는 어떠한 책임도 지지 않는다.
					3. 임차인은 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 진다.
					4. 임차인이 오류의 정정을 요구한 경우에는 회사는 그 오류를 정정하고 잘못된 당해 개인정보를 지체 없이 파기한다.
					
					제42조 (블랙박스 설치/사용)
					1. 회사는 렌터카 또는 대체렌터카에 블랙박스(영상기록장치)를 기본으로 장착할 수 있다. 블랙박스는 사고 발생 시 사고 처리를 위한 정보(증거) 수집용으로만 사용되며, 임차인은 렌터카의 사고처리 목적으로 기록된 사고영상을 회사 및 자동차보험 가입 보험회사, 기타 관계기관(경찰서 등)에서 요청한 경우 해당 영상을 원본 그대로 제공하여야 한다.
					2. 임차인은 렌터카 또는 대체렌터카에 장착된 블랙박스에 기록된 영상을 렌터카의 사고처리 목적 이외의 용도로 저장, 배포, 편집, 제공, 판매하는 등 관련법령을 위반하는 일체의 행위를 해서는 안 된다.
					</pre>
				</div>
			</div>
			<!-- terms-list//end -->
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>
						취소 및 위약금 규정 동의 <strong class="cl-point1">(필수)</strong>
					</h4>
					<span class="checkbox v2"> <input type="checkbox"
						id="select-terms4"> <label class="label"
						for="select-terms4">동의</label>
					</span>
				</div>
				<div class="terms-content notice">
					<ul class="list-info v1">
						<li>대여시간 24시간 이내 취소시 순수차량 대여요금의 10% 위약금이 발생합니다.</li>
						<li>대여시간 이후(NO-Show) 취소시 순수차량 대여요금의 10% 위약금이 발생합니다.</li>
						<li>대여시간에서 2시간 경과시 예약이 임의로 취소됩니다.</li>
					</ul>
				</div>
			</div>
			<!-- terms-list//end -->
			<!-- 190614 추가 -->
			<div class="terms-list v3 list">
				<div class="terms-header subject">
					<h4>
						대여자격 확인 동의 <strong class="cl-point1">(필수)</strong>
					</h4>
					<span class="checkbox v2"> <input type="checkbox"
						id="select-terms5"> <label class="label"
						for="select-terms5">동의</label>
					</span>
				</div>
				<!-- 2022.8.22 추가 -->
				<div class="terms-content notice" style="display: block;" >
					<strong class="wg-bold">1. 한국인(외국영주권자 포함) </strong>
					<ul class="list-info v1" style="padding-left: 10px;">
						<li>9인승 이하 차량 : 만 21세 이상, 2종 보통면허 이상, 운전경력 1년 이상(운전경력 재취득 포함)</li>
						<li>11인승 이상 차량 : 만 26세 이상, 1종 보통면허 이상, 운전경력 3년 이상(운전경력 재취득 포함)</li>
						<li>수입차 : 만 26세 이상, 운전경력 3년 이상(운전경력 재취득 포함)</li>
					</ul>
					<p class="cl-point1">※ 운전경력 인정기준 : 현 유효한 면허증의 면허취득일 기준(유효한 면허 이전의 모든 면허 경력 인정 불가)</p>
					<strong class="wg-bold" style="color:#000;">2. 외국인</strong>
				<div>
					<ul class="list-info v1" style="padding-left: 10px;">
						<li>승차인원 9명 이하</li>
					</ul>
					<ul class="list-info v2" style="padding-left: 20px;">
						<li>만21세 이상, 교환된 한국 운전면허증 일반2종 이상, 국제운전면허증(IDP) Class "B“, 주한미군 자동차운전면허증<br>
						<span>※ 한국운전면허증 : 국내 취득 면허 - 발급 후 1 년 이상 경과 / 국내 교환 면허 -  운전경력 조항 면제(*별도서류 확인 필수)</span>
						</li>
					</ul>
				</div>
				<div>
					<ul class="list-info v1" style="padding-left: 10px;">
						<li>승차인원 10명 이상</li>
					</ul>
					<ul class="list-info v2" style="padding-left: 20px;">
						<li>만26세 이상, 교환된 한국 운전면허증 일반1종 이상, 국제운전면허증(IDP) Class "D"<br>
						<span>※ 한국운전면허증 : 국내 취득 및 교환 모두 발급 후 3년 이상 경과</span>
						</li>
					</ul>
				</div>
				<div style="margin-top: 15px;">
					<ul class="list-info v1" style="padding-left: 10px;">
						<li>외국 운전면허증에서 한국 운전면허증으로 교환된 면허는 발급 후 1 년 조항 면제 (9 인 이하 차종의 경우)<br>
							(*한국 운전면허 경력 면제 시 : 본국 운전면허증(로컬면허증)의 취득기간이 확인되는 대사관 확인 문서 or  아포스티유 인증서 확인)
						</li>
						<li style="color: #000;">주한미군 자가용 운전면허증 소지자는 최대 9 인승 이하 차량만 대여 가능</li>
						<li>국제 운전면허증의 유효기간과 별개로 국제 조약 및 관련 법령에 따라 해당 국가에 마지막 입국한날로부터 1년만 유효</li>
						<li>국제운전면허증/여권/본국 운전면허증 서류 모두 영문 성/이름이 일치하지 않을 경우 무효</li>
						<li>국제운전면허증으로 운전할 경우 운전면허증과 여권을 지참하지 않으면 무면허 운전으로 처벌받을 수 있으므로 운전 중에도 유효 서류 지참 필요</li>
						<li><span class="cl-point1">한국은 IDP(International Driving Permit) 국제운전면허증만 유효 (IDL 불가)</span></li>
					</ul>
				</div>
				<p class="cl-point1" style="margin-top: 10px; margin-bottom: 0;">* 운전자가 위의 대여자격조건에 맞지 않을 경우 현장에서 차량인수가 불가할 수 있습니다.</p>
				<div class="terms-content03">
					<ul class="list-info v1" style="padding-left:0; margin-left:0;">
						<li>여객자동차운수사업법 제34조 2항 개정에 따른 대여자동차 운전자의 자격 확인</li>
					</ul>
					<div>
						<p>여객자동차운수사업법 제34조 2(자동차 대여사업자의 준수사항) ②항 자동차대여사업자는 대여사업용 자동차를 대여할 때 임대차계약서상의 운전자에 대하여 운전자격을 확인하고, 해당 운전자가 다음 각 호의 어느 하나에 해당하는 경우에는 자동차를 대여하여서는 아니 된다.</p>
						<ul class="list-info02" style="width:auto;">
							<li>“도로교통법” 제80조 제1항에 따라 지방경찰청장으로부터 운전면허를 받지 아니하거나 운전면허의 효력이 정지된 경우</li>
							<li>대여하는 자동차가 임대차계약서상의 운전자가 보유한 운전면허의 범위(“도로교통법” 제80조 제2항에 따른 운전면허의 범위를 말한다)에 따라 운전할 수 있는 자동차의 종류에 해당하지 아니하는 경우</li>
						</ul>
					</div>
				</div>
				</div>
			</div>
			<!-- terms-list//end -->
			<div class="terms-list v3 list" style="display:none;">
				<div class="terms-header subject">
					<h4 class="pal0">개인정보 위탁안내</h4>
				</div>
				<div class="terms-content notice">
					<table class="tb-cnt">
						<caption>개인정보 위탁안내에 대한 표</caption>
						<colgroup>
							<col width="20%">
							<col width="30%">
							<col width="20%">
							<col width="30%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">수탁자</th>
								<th scope="col">처리 위탁 업무 내용</th>
								<th scope="col">수탁자</th>
								<th scope="col">처리 위탁 업무 내용</th>
							</tr>
						</thead>
						<tbody>
							<!-- 20180608 : s -->
							<tr>
								<td class="text-c">SK 주식회사 C&amp;C</td>
								<td class="par0">정보전산처리/유지 및 관리</td>
								<td class="text-c pal0 par0">SK렌터카서비스㈜</td>
								<!-- 20180402 -->
								<td class="par0">장기/준장기/단기렌탈 계약 및 지점 운영업무 수행, 고객센터 운영,
									당사 상품 및 서비스 안내 TM (단, TM은 사전동의를 얻은 경우에 한함)</td>
							</tr>
							<tr>
								<td class="text-c">㈜다우기술</td>
								<td class="par0">SMS/MMS 발송서비스제공</td>
								<td class="text-c">큐브세븐틴㈜</td>
								<td class="par0">모바일 설문조사 (해피콜) 제공</td>
							</tr>
							<tr>
								<td class="text-c">First Data</td>
								<td class="par0">신용카드 결제</td>
								<td class="text-c">㈜스펙트라</td>
								<td class="par0">채팅상담 솔루션 제공</td>
							</tr>
							<tr>
								<td class="text-c">㈜휴머스온</td>
								<td class="par0">PUSH 메세지 발송 서비스 제공</td>
								<td class="text-c">㈜비즈톡</td>
								<td class="par0">알림톡/SMS/MMS 발송 서비스제공</td>
							</tr>
							<tr>
								<td class="text-c">㈜더홍</td>
								<td class="par0">빌리카 홈페이지 관리/운영</td>
								<td class="text-c">㈜유니트론텍</td>
								<td class="par0">SK렌터카 홈페이지 관리/운영</td>
							</tr>
							<!-- 20200804 업체추가 -->
							<tr>
								<td class="text-c">(주)모터엠에이엔</td>
								<td class="par0">렌터카 차량 검사 대행</td>
								<td class="text-c">(주)에스에스카</td>
								<td class="par0">렌터카 차량 검사 대행</td>
							</tr>
							<tr>
								<td class="text-c">도로교통안전공단</td>
								<td class="par0">자동차운전면허 유효성 인증</td>
								<td class="text-c"></td>
								<td class="par0"></td>
							</tr>
							<!-- 20180608 : e -->
						</tbody>
					</table>
				</div>
			</div>
			<!-- terms-list//end -->
		</div>
		<!-- terms-listbox//end -->
		<p class="msg-info v1">고객님께서는 동의를 거부할 권리가 있으나, 미 동의시 렌터카 서비스
			이용이 불가능합니다.</p>
	</div>
	<!-- article-content//end -->
</article>

<!-- <div id="modal-box"> -->
<div id="modal-policy-penalty" class="modal-pop modal-large" style="height:500px !important;margin-top:0 !important;transform:translateY(-50%);">
    <div class="modal-box">
        <div class="modal-header">
            <a href="#modal-policy-penalty" class="modal-close">레이어 닫기</a>
            <h3>과태료 등 부과주체</h3>
        </div>
        <article>
            <div class="">
                <div class="article-content">
                    <div class="terms-list">
                        <table class="tb-cnt tb-my cnt-center">
                            <caption> 표</caption>
                            <colgroup>
                                <col width="50%">
                                <col width="*">
                            </colgroup>
                            <thead>
                            <tr>
                                <th colspan="2">주체명</th>
                            </tr>
                            </thead>
                            <tbody>
								<tr>
									<td>경찰서</td>
									<td>지자체</td>
								</tr>
								<tr>
									<td>지자체 시설관리공단</td>
									<td>한국도로공사</td>
								</tr>
								<tr>
									<td>신용조회회사</td>
									<td>유료도로/터널/주차장 사업자 및 관리운영회사</td>
								</tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </article>
    </div>
</div>
<!-- </div> -->
				<!-- 이용약관 End -->

</body>
</html>