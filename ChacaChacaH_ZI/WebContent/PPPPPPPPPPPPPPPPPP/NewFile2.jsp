<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

@import url("https://fonts.googleapis.com/css?family=Arima+Madurai:300");
*,
*::before,
*::after {
  box-sizing: border-box;
}

h1 {
  font-family: "Arima Madurai", cursive;
  color: black;
  font-size: 4rem;
  letter-spacing: -3px;
  text-shadow: 0px 1px 1px rgba(255, 255, 255, 0.6);
  position: relative;
  z-index: 3;
}

.container {
  z-index: 1;
  position: relative;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 35rem;
  background-image: linear-gradient(to bottom, rgba(255, 168, 76, 0.6) 0%, rgba(255, 123, 13, 0.6) 100%), url("https://images.unsplash.com/photo-1446824505046-e43605ffb17f");
  background-blend-mode: soft-light;
  background-size: cover;
  background-position: center center;
  padding: 2rem;
}

.bird {
  background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/174479/bird-cells-new.svg);
  background-size: auto 100%;
  width: 352px;
  height: 500px;
  will-change: background-position;
  -webkit-animation-name: fly-cycle;
          animation-name: fly-cycle;
  -webkit-animation-duration: 1s;
          animation-duration: 1s;
  -webkit-animation-delay: -0.5s;
          animation-delay: -0.5s;
  -webkit-animation-timing-function: steps(10);
          animation-timing-function: steps(10);
  -webkit-animation-iteration-count: infinite;
          animation-iteration-count: infinite;
}

.bird-container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  will-change: transform;
}

@-webkit-keyframes fly-cycle {
  100% {
    background-position: -3600px 0;
  }
}

@keyframes fly-cycle {
  100% {
    background-position: -3600px 0;
  }
}

</style>

</head>
<body>


<div class="container">
	
	<div class="bird-container">
		<div class="bird"></div>
	</div>

</div>


</body>
</html>