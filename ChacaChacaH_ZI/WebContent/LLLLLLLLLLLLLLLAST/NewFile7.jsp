<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
*,
*:after,
*:before {
  box-sizing: border-box;
}
:root {
  --transition: 0.2;
  --bg-one: #0f0514;
  --bg-two: #320449;
  --stop: 40;
  --angle: 45;
  --border-width: 5;
  --padlock-size: 300;
  --border-radius: 6;
}
body {
  align-items: center;
  display: flex;
  justify-content: center;
  min-height: 100vh;
  font-family: sans-serif;
  background: linear-gradient(calc(var(--angle) * 1deg), var(--bg-one) calc(var(--stop) * 1%), var(--bg-two) calc(var(--stop) * 1%));
}
form {
  display: grid;
  grid-template-columns: auto;
  grid-gap: 0.5rem 1rem;
  justify-items: center;
  position: relative;
}
[type='password'] {
  padding: 12px 20px;
  font-size: 1rem;
  border-width: calc(var(--border-width) * 1px);
  border-style: solid;
  border-color: var(--accent);
  border-radius: calc(var(--border-radius) * 1px);
  text-align: center;
  outline: transparent;
  width: 100%;
  transition: border-color calc(var(--transition, 0.2) * 1s) ease;
}
[type='password']:valid {
  --accent: #5f0;
}
[type='password']:invalid {
  --accent: rgba(255,43,0,0.5);
}
[type='password']:-moz-placeholder-shown {
  --accent: #fff;
}
[type='password']:-ms-input-placeholder {
  --accent: #fff;
}
[type='password']:placeholder-shown {
  --accent: #fff;
}
.app {
  height: 100vh;
  width: 100vw;
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  background: #f2f2f2;
  transform: scale(var(--scale));
  transition: transform calc(var(--transition, 0.2) * 1s) ease;
}
[for='password'],
#login {
  height: 0;
  width: 0;
  transform: scale(0);
  position: absolute;
}
.logout-button {
  --size: 52;
  --lightness: 45;
  height: calc(var(--size) * 1px);
  padding: 12px 20px;
  text-transform: uppercase;
  font-weight: bold;
  color: #fff;
  background: hsl(10, 80%, calc(var(--lightness) * 1%));
  border: 0;
  border-radius: calc(var(--border-radius) * 1px);
  cursor: pointer;
}
.logout-button:hover {
  --lightness: 30;
}
.logout-button:active {
  --lightness: 20;
}
.login-button {
  --size: 52;
  --lightness: 45;
  align-items: center;
  background: hsl(100, 80%, calc(var(--lightness) * 1%));
  border-radius: calc(var(--border-radius) * 1px);
  cursor: pointer;
  display: flex;
  height: calc(var(--size) * 1px);
  justify-content: center;
  padding: 12px 20px;
  text-transform: uppercase;
  font-weight: bold;
  color: #fff;
  width: 100%;
  transition: background calc(var(--transition, 0.2) * 1s) ease;
}
.login-button svg {
  transform: translate(50%, 0);
}
.login-button * {
  cursor: pointer;
}
.login-button:hover {
  --lightness: 30;
}
.login-button:active {
  --lightness: 20;
}
.login-button svg {
  height: 24px;
  width: 24px;
}
.login-button svg path {
  fill: #fff;
}
.padlock {
  --hue: 65;
  --color: #ffd500;
  --color-one: #ffa200;
  --color-two: #fff;
  height: calc(var(--padlock-size) * 1px);
  width: calc(var(--padlock-size) * 1px);
  grid-row: 1;
  position: relative;
}
.padlock__body {
  border: 8px solid #000;
  border-radius: 20px;
  position: absolute;
  bottom: 10%;
  width: 66%;
  height: 46%;
  left: 50%;
  transform: translate(-50%, 0);
  background: var(--color);
  box-shadow: -30px 0 0px 0px var(--color-one) inset, 10px 0 0px 0px var(--color-two) inset;
}
.padlock__face {
  height: 25%;
  width: 40%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, 0);
}
.padlock__eye {
  position: absolute;
  height: 15px;
  width: 15px;
  background: #000;
  top: 0;
  border-radius: 50%;
  -webkit-animation: blink 4s infinite linear;
          animation: blink 4s infinite linear;
}
.padlock__eye:after {
  content: '';
  height: 25%;
  width: 25%;
  background: #fff;
  border-radius: 50%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-100%, -100%);
}
.padlock__eye--left {
  left: 0;
}
.padlock__eye--right {
  right: 0;
}
@-webkit-keyframes blink {
  0%, 24%, 27%, 100% {
    transform: scaleY(1);
  }
  25%, 26% {
    transform: scaleY(0);
  }
}
@keyframes blink {
  0%, 24%, 27%, 100% {
    transform: scaleY(1);
  }
  25%, 26% {
    transform: scaleY(0);
  }
}
.padlock__mouth {
  width: 25%;
  height: 10px;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translate(-50%, 0);
}
.padlock__mouth--one {
  background: #000;
  height: 5px;
  width: 40%;
  left: 45%;
  bottom: 25%;
  display: block;
}
.padlock__mouth--two,
.padlock__mouth--three {
  height: 24px;
  width: 20px;
  border-radius: 50%;
  bottom: 24%;
  background: transparent;
  -webkit-clip-path: inset(64% 0 0 0);
  clip-path: inset(64% 0 0 0);
  display: none;
  overflow: hidden;
}
.padlock__mouth--two:before,
.padlock__mouth--three:before {
  content: '';
  height: 100%;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  border-radius: 50%;
  border: 4px solid #000;
}
.padlock__mouth--three {
  background: #000;
}
.padlock__mouth--three:after {
  content: '';
  position: absolute;
  height: 6px;
  width: 10px;
  border-radius: 50%;
  bottom: -2px;
  left: 40%;
  background: #f00;
}
.padlock__hook {
  --delay: 1;
  --clip: 40;
  width: 50%;
  height: 90%;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, calc(var(--pos, 40) * -1%));
  -webkit-clip-path: inset(0 0 30% 0);
  clip-path: inset(0 0 30% 0);
  transition: transform calc(var(--transition, 0.2) * 1s) calc(((var(--transition, 0.2) * 1.5) * var(--delay, 0)) * 1s) cubic-bezier(0.78, 0.16, 0.64, 1.8);
}
.padlock__hook:after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  width: calc(100% - 16px);
  height: calc(100% - 16px);
  border-radius: 50%/40%;
  transform: translate(-50%, -50%);
  box-shadow: 5px 0 0 0 #fff inset, -10px 0 0 0 #666 inset;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% calc(var(--clip) * 1%), 50% calc(var(--clip) * 1%), 50% 100%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% calc(var(--clip) * 1%), 50% calc(var(--clip) * 1%), 50% 100%, 0 100%);
}
.padlock__hook > div {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.padlock__hook > div:nth-of-type(1) {
  width: 100%;
  height: 100%;
  border: 36px solid #000;
  border-radius: 50%/40%;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% calc(calc(var(--clip) * 1%) + 8px), 50% calc(calc(var(--clip) * 1%) + 8px), 50% 100%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% calc(calc(var(--clip) * 1%) + 8px), 50% calc(calc(var(--clip) * 1%) + 8px), 50% 100%, 0 100%);
}
.padlock__hook > div:nth-of-type(2) {
  width: calc(100% - 16px);
  height: calc(100% - 16px);
  border: 20px solid #bfbfbf;
  border-radius: 50%/40%;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% calc(var(--clip) * 1%), 50% calc(var(--clip) * 1%), 50% 100%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% calc(var(--clip) * 1%), 50% calc(var(--clip) * 1%), 50% 100%, 0 100%);
}
.logout-message {
  display: block;
  width: 100%;
  border-radius: calc(var(--border-radius) * 1px);
  padding: 1rem;
  background: #fff;
  text-align: center;
  font-weight: bold;
}
#login:checked ~ .app {
  --scale: 1;
}
[type='password']:valid ~ #login,
[type='password']:valid ~ [for='login'] {
  visibility: visible;
}
[type='password']:valid ~ #login:hover ~ .padlock .padlock__mouth--one,
[type='password']:valid ~ [for='login']:hover ~ .padlock .padlock__mouth--one,
[type='password']:valid ~ #login:hover ~ .padlock .padlock__mouth--two,
[type='password']:valid ~ [for='login']:hover ~ .padlock .padlock__mouth--two {
  display: none;
}
[type='password']:valid ~ #login:hover ~ .padlock .padlock__mouth--three,
[type='password']:valid ~ [for='login']:hover ~ .padlock .padlock__mouth--three {
  display: block;
}
[type='password']:valid ~ .padlock .padlock__mouth--one {
  display: none;
}
[type='password']:valid ~ .padlock .padlock__mouth--two {
  display: block;
}
[type='password']:valid ~ .padlock .padlock__hook {
  --pos: 60;
  --delay: 0;
}
[type='password']:-moz-placeholder-shown ~ .app {
  -moz-transition: transform 0s 0s ease;
  transition: transform 0s 0s ease;
}
[type='password']:-ms-input-placeholder ~ .app {
  -ms-transition: transform 0s 0s ease;
  transition: transform 0s 0s ease;
}
[type='password']:placeholder-shown ~ .app {
  transition: transform 0s 0s ease;
}
.app:focus-within ~ .logout-message {
  visibility: visible;
  grid-row: 3;
}
#login,
[for='login'],
.logout-message {
  visibility: hidden;
}
.app {
  --scale: 0;
}


</style>

</head>
<body>


<form onsubmit="return false;">
  <label for="password">Password</label>
  <input id="password" type="password" pattern="password123" placeholder="Enter your password" required="required" title="Wasn't your password &quot;password123&quot;? 🤫"/>
  <input id="login" type="checkbox"/>
  <label class="login-button" for="login"><span>Enter</span>
    <svg>
      <path d="M10,17V14H3V10H10V7L15,12L10,17M7,2H17A2,2 0 0,1 19,4V20A2,2 0 0,1 17,22H7A2,2 0 0,1 5,20V16H7V20H17V4H7V8H5V4A2,2 0 0,1 7,2Z"></path>
    </svg>
  </label>
  <div class="padlock">
    <div class="padlock__hook">
      <div class="padlock__hook-body"></div>
      <div class="padlock__hook-body"></div>
    </div>
    <div class="padlock__body">
      <div class="padlock__face">
        <div class="padlock__eye padlock__eye--left"></div>
        <div class="padlock__eye padlock__eye--right"></div>
        <div class="padlock__mouth padlock__mouth--one"></div>
        <div class="padlock__mouth padlock__mouth--two"></div>
        <div class="padlock__mouth padlock__mouth--three"></div>
      </div>
    </div>
  </div>
  <div class="app">
    <h1>You logged in! 🎉</h1>
    <button class="logout-button" type="reset">Logout</button>
  </div><span class="logout-message">You have logged out.</span>
</form>

</body>
</html>