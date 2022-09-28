<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
@import url('https://rsms.me/inter/inter.css');

:root {
  --color-light: white;
  --color-dark: #212121;
  --color-signal: #fab700;
  
  --color-background: var(--color-light);
  --color-text: var(--color-dark);
  --color-accent: var(--color-signal);
  
  --size-bezel: .5rem;
  --size-radius: 4px;
  
  line-height: 1.4;
  
  font-family: 'Inter', sans-serif;
  font-size: calc(.6rem + .4vw);
  color: var(--color-text);
  background: var(--color-background);
  font-weight: 300;
  padding: 0 calc(var(--size-bezel) * 3);
}

h1, h2, h3 {
  font-weight: 900;
}

mark {
  background: var(--color-accent);
  color: var(--color-text);
  font-weight: bold;
  padding: 0 0.2em;
}

.card {
  background: var(--color-background);
  padding: calc(4 * var(--size-bezel));
  margin-top: calc(4 * var(--size-bezel));
  border-radius: var(--size-radius);
  border: 3px solid var(--color-shadow, currentColor);
  box-shadow: .5rem .5rem 0 var(--color-shadow, currentColor);
  
  &--inverted {
    --color-background: var(--color-dark);
    color: var(--color-light);
    --color-shadow: var(--color-accent);
  }
  
  &--accent {
    --color-background: var(--color-signal);
    --color-accent: var(--color-light);
    color: var(--color-dark);
  }
  
  *:first-child {
    margin-top: 0;
  }
}


.l-design-widht {
  max-width: 40rem;
  padding: 1rem;
}

.input {
  position: relative;
  
  &__label {
    position: absolute;
    left: 0;
    top: 0;
    padding: calc(var(--size-bezel) * 0.75) calc(var(--size-bezel) * .5);
    margin: calc(var(--size-bezel) * 0.75 + 3px) calc(var(--size-bezel) * .5);
    background: pink;
    white-space: nowrap;
    transform: translate(0, 0);
    transform-origin: 0 0;
    background: var(--color-background);
    transition: transform 120ms ease-in;
    font-weight: bold;
    line-height: 1.2;
  }
  &__field {
    box-sizing: border-box;
    display: block;
    width: 100%;
    border: 3px solid currentColor;
    padding: calc(var(--size-bezel) * 1.5) var(--size-bezel);
    color: currentColor;
    background: transparent;
    border-radius: var(--size-radius);
    
    &:focus,
    &:not(:placeholder-shown) {
      & + .input__label {
        transform: translate(.25rem, -65%) scale(.8);
        color: var(--color-accent);
      }
    }
  }
}


.button-group {
  margin-top: calc(var(--size-bezel) * 2.5);
}

button {
  color: currentColor;
  padding: var(--size-bezel) calc(var(--size-bezel) * 2);
  background: var(--color-accent);
  border: none;
  border-radius: var(--size-radius);
  font-weight: 900;
  
  &[type=reset]{
    background: var(--color-background);
    font-weight: 200;
  } 
}

button + button {
  margin-left: calc(var(--size-bezel) * 2);
}

.icon {
  display: inline-block;
  width: 1em; height: 1em;
  margin-right: .5em;
}

.hidden {
  display: none;
}


</style>

<script type="text/javascript">

let timer;

document.addEventListener("input", e => {
  const el = e.target;

  if (el.matches("[data-color]")) {
    clearTimeout(timer);
    timer = setTimeout(() => {
      document.documentElement.style.setProperty(
      `--color-${el.dataset.color}`,
      el.value);

    }, 100);
  }
});

</script>

</head>
<body>

<article class="l-design-widht">
  <h1>Mini CSS-vars Design System</h1>

  <p>Most of the projects I work on have about <mark>3</mark> important colors: Main- , Accent-  and Background-Color. Naturally tons of other colors are used in a typical Project, but they are mostly used within specific components.</p>
  
  <p>I find it useful to set those 3 colors as vars on the root and change them in specific contexts. It turns out that the complexity of the components I build is dramatically cut down by this. And also gives me a lot of control over the cascade.</p>
  
  <div class="card">
    <h2><svg class="icon" aria-hidden="true">
      <use xlink:href="#icon-coffee" href="#icon-coffee" /></svg>Regular</h2>
    <label class="input">
      <input class="input__field" type="text" placeholder=" " />
      <span class="input__label">Some Fancy Label</span>
    </label>
    <div class="button-group">
      <button>Send</button>
      <button type="reset">Reset</button>
    </div>
  </div>
  <div class="card card--inverted">
    <h2> <svg class="icon" aria-hidden="true">
      <use xlink:href="#icon-coffee" href="#icon-coffee" />
    </svg>Inverted</h2>
    <label class="input">
      <input class="input__field" type="text" placeholder=" " value="Valuable value" />
      <span class="input__label">Some Fancy Label</span>
    </label>
   
    <div class="button-group">
      <button>Send</button>
      <button type="reset">Reset</button>
    </div>
  </div>
    <div class="card card--accent">
    <h2><svg class="icon" aria-hidden="true">
      <use xlink:href="#icon-coffee" href="#icon-coffee" />
    </svg>Accent</h2>
    <label class="input">
      <input class="input__field" type="text" placeholder=" " />
      <span class="input__label">Some Fancy Label</span>
    </label>
    
    <div class="button-group">
      <button>Send</button>
      <button type="reset">Reset</button>
    </div>
  </div>
  
    <div class="card card--inverted">
    <h2>Colors</h2>
    <p>Play around with the colors</p>
    <input type="color" data-color="light" value="#ffffff" />
    <input type="color" data-color="dark" value="#212121" />
    <input type="color" data-color="signal" value="#fab700" />
  </div>
</article>

<svg xmlns="http://www.w3.org/2000/svg" class="hidden">
  <symbol id="icon-coffee" viewBox="0 0 20 20">
    <title>icon-coffee</title>
    <path fill="currentColor" d="M15,17H14V9h3a3,3,0,0,1,3,3h0A5,5,0,0,1,15,17Zm1-6v3.83A3,3,0,0,0,18,12a1,1,0,0,0-1-1Z"/>
    <rect fill="currentColor" x="1" y="7" width="15" height="12" rx="3" ry="3"/>
    <path fill="var(--color-accent)" d="M7.07,5.42a5.45,5.45,0,0,1,0-4.85,1,1,0,0,1,1.79.89,3.44,3.44,0,0,0,0,3.06,1,1,0,0,1-1.79.89Z"/>
    <path fill="var(--color-accent)" d="M3.07,5.42a5.45,5.45,0,0,1,0-4.85,1,1,0,0,1,1.79.89,3.44,3.44,0,0,0,0,3.06,1,1,0,1,1-1.79.89Z"/>
    <path fill="var(--color-accent)" d="M11.07,5.42a5.45,5.45,0,0,1,0-4.85,1,1,0,0,1,1.79.89,3.44,3.44,0,0,0,0,3.06,1,1,0,1,1-1.79.89Z"/>
  </symbol>
</svg>

</body>
</html>