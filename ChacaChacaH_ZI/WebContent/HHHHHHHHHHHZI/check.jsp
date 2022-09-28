<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<!-- 약관동의 - 아코디언 css -->
<style>
.accordion {
  background-color: none;;
  color: black;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: none;
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}
</style>
<!-- 약관동의 - 아코디언 css -->

<script type="text/javascript">

    //선택 동의를 해제 했을 시 전체동의가 해제 되게
    document.addEventListener('DOMContentLoaded', () => {
        const ckTag = document.getElementById('id_a')
        const evtBtnTag1 = document.getElementById('id_b')
        const evtBtnTag2 = document.getElementById('id_c')
        const evtBtnTag3 = document.getElementById('id_d')
        
        ckTag.addEventListener('click', (event) => {

            const chckValue = event.currentTarget.checked;

            evtBtnTag1.checked = chckValue
            evtBtnTag2.checked = chckValue
            evtBtnTag3.checked = chckValue

        })

        evtBtnTag1.addEventListener('click', (event) => {
            if(event.currentTarget.checked == false){
                ckTag.checked = false;
            }
        })
        evtBtnTag1.addEventListener('click', (event) => {
            if(event.currentTarget.checked == false){
                ckTag.checked = false;
            }
        })
        evtBtnTag3.addEventListener('click', (event) => {
            if(event.currentTarget.checked == false){
                ckTag.checked = false;
            }
        })
    })
</script>
</head>
<body>
<!-- 	<label for="id_a"><input type="checkbox" name="all" id="id_a">&nbsp; 전체동의</label><br> -->
<!-- 	<label><input type="checkbox" name="ckbox" id="id_b">&nbsp; 개인정보 방침 동의</label><br> -->
<!-- 	<label><input type="checkbox" name="ckbox" id="id_c">&nbsp; 서비스 이용약관 동의</label><br> -->
<!-- 	<label><input type="checkbox" name="ckbox" id="id_d">&nbsp; 마케팅 수신 동의</label><br> -->
	
		
	<label for="id_a"><input type="checkbox" name="all" id="id_a">&nbsp; 전체동의</label><br>
	<label><input type="checkbox" name="ckbox" id="id_b">&nbsp; <button class="accordion">이용약관</button></label><br>
	<label><input type="checkbox" name="ckbox" id="id_c">&nbsp; 서비스 이용약관 동의</label><br>
	<label><input type="checkbox" name="ckbox" id="id_d">&nbsp; 마케팅 수신 동의</label><br>
	
	!-- 약관동의 - 아코디언 body -->
<h2>이용약관</h2>


<!-- 약관동의 - 아코디언 body -->
	
	
	
	
	
	<!-- 약관동의 - 아코디언 js -->
<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
<!-- 약관동의 - 아코디언 js -->
	
</body>
</html>