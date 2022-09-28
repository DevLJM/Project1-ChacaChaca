<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	height: 100vh;
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #5b6467;
	background-image: linear-gradient(315deg, #5b6467 0%, #8b939a 74%);
}

.noselect {
  -webkit-touch-callout: none;
    -webkit-user-select: none;
     -khtml-user-select: none;
       -moz-user-select: none;
        -ms-user-select: none;
            user-select: none;
		-webkit-tap-highlight-color: transparent;
}

button {
	width: 150px;
	height: 50px;
	cursor: pointer;
	font-size: 20px;
	font-family: 'Staatliches', cursive;
	letter-spacing: 5px;
	background: #ffc421;
	border: 2px solid black;
	box-shadow: 0px 0px 0px rgba(0,0,0,0.4);
	transition: 500ms;
}

button:after {
	content: '';
	position: absolute;
	transform: translateX(-55px) translateY(-40px);
	width: 25px;
	height: 25px;
	border-radius: 50%;
	background: transparent;
	box-shadow: 0px 0px 50px transparent;
	transition: 500ms;
}

button:hover {
	transform: translateY(-5px);
	box-shadow: 0px 10px 10px rgba(0,0,0,0.4);
}

button:hover:after {
	background: white;
	box-shadow: 0px 0px 20px #ffc421, 0px 0px 30px #ffc421, inset 0px 0px 10px #ffc421;
	animation: spin 1s infinite linear;
}

@keyframes spin{
	25%{transform: translateX(-25px) translateY(-35px);
			width: 15px;
			height: 15px;}
	50% {transform: translateX(-55px) translateY(-30px);
			width: 5px;
			height: 5px;}
	75% {transform: translateX(-85px) translateY(-35px);
			width: 15px;
			height: 15px;}
}

button:focus {
	outline: none;
}

</style>

</head>
<body>

<link href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap" rel="stylesheet">

<button class="noselect">Warning</button>

</body>
</html>