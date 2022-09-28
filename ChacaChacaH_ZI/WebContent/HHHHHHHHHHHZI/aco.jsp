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



</head>
<body>



<!-- 약관동의 - 아코디언 body -->
<h2>이용약관</h2>

<section class="check_box">
<button class="accordion"><strong>(필수) </strong>이용약관</button>
<div class="panel">
  <p> 내용 </p>
</div>
</section>

<section class="check_box">
<button class="accordion">이용약관</button>
<div class="panel">
  <p> 내용 </p>
</div>
</section>

<section class="check_box">
<button class="accordion">이용약관</button>
<div class="panel">
  <p> 내용 </p>
</div>
</section>
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