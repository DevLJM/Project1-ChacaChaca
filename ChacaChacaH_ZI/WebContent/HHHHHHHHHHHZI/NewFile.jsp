<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">


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


<!-- 약관동의 - 체크박스 js -->
<script type="text/javascript">
//체크박스 전체 선택
$(".checkbox_group").on("click", "#check_all", function () {
    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
});

// 체크박스 개별 선택
$(".checkbox_group").on("click", ".normal", function() {
    var is_checked = true;

    $(".checkbox_group .normal").each(function(){
        is_checked = is_checked && $(this).is(":checked");
    });

    $("#check_all").prop("checked", is_checked);
});
</script>
<!-- 약관동의 - 체크박스 js -->


</head>
<body>



<!-- 약관동의 - 아코디언 body -->
<h2>이용약관</h2>

<button class="accordion">이용약관</button>
<div class="panel">
  <p>차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카</p>
</div>

<button class="accordion">이용약관</button>
<div class="panel">
  <p>차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카</p>
</div>
<button class="accordion">이용약관</button>
<div class="panel">
  <p>차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카차카</p>
</div>
<!-- 약관동의 - 아코디언 body -->


<!-- 약관동의 - 체크박스 body -->
<div class="checkbox_group">

  <input type="checkbox" id="check_all" >
  <label for="check_all">전체 동의</label>
  
  <input type="checkbox" id="check_1" class="normal" >
  <label for="check_1">개인정보 처리방침 동의</label>
  
  <input type="checkbox" id="check_2" class="normal" >
  <label for="check_2">서비스 이용약관 동의</label>
  
  <input type="checkbox" id="check_3" class="normal" >
  <label for="check_3">마케팅 수신 동의</label>
  
</div>
<!-- 약관동의 - 체크박스 body -->



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