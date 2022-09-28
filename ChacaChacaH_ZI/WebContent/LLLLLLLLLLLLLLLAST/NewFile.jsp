<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

* {
  outline: none;
}

html,
body {
  height: 100%;
  min-height: 100%;
}

body {
  margin: 0;
  background-color: #f44336;
}

body,
input {
  cursor: url(http://k003.kiwi6.com/hotlink/vp054ir5gt/c1.png) 32 32, auto;
  cursor: -webkit-image-set(url(http://k003.kiwi6.com/hotlink/vp054ir5gt/c1.png) 1x,url(http://k003.kiwi6.com/hotlink/z6fy599487/c2.png) 2x) 32 32, auto;
}

body:active,
input:active {
  cursor: url(http://k003.kiwi6.com/hotlink/3p6w4icbzt/c1a.png) 32 32, auto;
  cursor: -webkit-image-set( url(http://k003.kiwi6.com/hotlink/3p6w4icbzt/c1a.png) 1x, url(http://k003.kiwi6.com/hotlink/6ma7828al1/c2a.png) 2x ) 32 32, auto;
}

#app-cover {
  position: absolute;
  top: 50%;
  right: 0;
  left: 0;
  width: 196px;
  height: 196px;
  margin: -98px auto 0 auto;
  background-color: #fff;
  border-radius: 50%;
  box-shadow: 0 0 0 8px #feeeed;
  overflow: hidden;
}

#checkbox {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  margin: 0;
  opacity: 0;
  z-index: 3;
}

#bin-icon {
  position: absolute;
  top: 50%;
  right: 0;
  left: 0;
  width: 42px;
  height: 58px;
  margin: -29px auto 0 auto;
  border-radius: 50%;
  z-index: 2;
}

#lid {
  position: relative;
  width: 50px;
  height: 4px;
  left: -4px;
  border-radius: 4px;
}

#lid:before {
  content: "";
  position: absolute;
  top: -4px;
  right: 0;
  left: 0;
  width: 10px;
  height: 6px;
  margin: 0 auto;
  border-radius: 10px 10px 0 0;
}

#box {
  position: relative;
  height: 52px;
  margin-top: 2px;
  border-radius: 0 0 8px 8px;
}

#box-inner {
  position: relative;
  top: 4px;
  width: 34px;
  height: 44px;
  margin: 0 auto;
  background-color: #fff;
  border-radius: 0 0 5px 5px;
}

#bin-lines {
  position: relative;
  top: 7px;
  margin: 0 auto;
}

#bin-lines,
#bin-lines:before,
#bin-lines:after {
  width: 3px;
  height: 30px;
  border-radius: 4px;
}

#bin-lines:before,
#bin-lines:after {
  content: "";
  position: absolute;
}

#bin-lines:before {
  left: -10px;
}

#bin-lines:after {
  left: 10px;
}

#layer {
  position: absolute;
  right: -20px;
  bottom: -20px;
  width: 0;
  height: 0;
  background-color: #03a9f4;
  border-radius: 50%;
  transition: 0.25s ease all;
  z-index: 1;
}

#lid,
#lid:before,
#box,
#bin-lines,
#bin-lines:before,
#bin-lines:after {
  background-color: #f44336;
  transition: 0.2s ease background-color;
}

#checkbox:checked ~ #bin-icon #lid,
#checkbox:checked ~ #bin-icon #lid:before,
#checkbox:checked ~ #bin-icon #box,
#checkbox:checked ~ #bin-icon #box-inner {
  background-color: #fff;
}

#checkbox:checked ~ #bin-icon #bin-lines,
#checkbox:checked ~ #bin-icon #bin-lines:before,
#checkbox:checked ~ #bin-icon #bin-lines:after {
  background-color: #03a9f4;
}

#checkbox:checked + #bin-icon #box {
  animation: shake 0.2s ease 0.1s;
}

#checkbox:checked + #bin-icon #lid {
  animation: lift-up 0.8s ease 0.1s, shake_u 0.8s ease 0.1s,
    shake_l 0.2s ease 0.8s;
}

#checkbox:checked ~ #layer {
  width: 226px;
  height: 226px;
}

@keyframes shake {
  0% {
    transform: rotateZ(3deg);
  }
  25% {
    transform: rotateZ(0);
  }
  75% {
    transform: rotateZ(-3deg);
  }
  100% {
    transform: rotateZ(0);
  }
}

@keyframes lift-up {
  0% {
    top: 0;
  }
  50% {
    top: -35px;
  }
  100% {
    top: 0;
  }
}

@keyframes shake_u {
  0% {
    transform: rotateZ(0);
  }
  25% {
    transform: rotateZ(-15deg);
  }
  50% {
    transform: rotateZ(0deg);
  }
  75% {
    transform: rotateZ(15deg);
  }
  100% {
    transform: rotateZ(0);
  }
}

@keyframes shake_l {
  0% {
    transform: rotateZ(0);
  }
  80% {
    transform: rotateZ(3deg);
  }
  90% {
    transform: rotateZ(-3deg);
  }
  100% {
    transform: rotateZ(0);
  }
}



</style>

</head>
<body>


<div id="app-cover">
  <input type="checkbox" id="checkbox">
  <div id="bin-icon">
    <div id="lid"></div>
    <div id="box">
      <div id="box-inner">
        <div id="bin-lines"></div>
      </div>
    </div>
  </div>
  <div id="layer"></div>
</div>


</body>
</html>