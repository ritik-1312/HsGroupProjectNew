<html>

<head> 
 <link rel="stylesheet" href="assets/css/loginsignup.css">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    
    <meta name="robots" content="noindex, nofollow">
    

    <style id="custom-styles-container">
     
        

body {
  background: #ffffff;
  font-family: ulp-font, -apple-system, BlinkMacSystemFont, Roboto, Helvetica, sans-serif;
}
.cad93d05e {
  background: #ffffff;
}
.c332ad646.cedda7581 {
  background: #de0b4e;
}
.c332ad646.c54cb12a4 {
  background: #0A8852;
}
.ce3038c82 {
  background-color: #de0b4e;
  color: #ffffff;
}
.ce3038c82 a,
.ce3038c82 a:visited {
  color: #ffffff;
}
.c0f357190 {
  background-color: #0A8852;
}
.ceb37ec83 {
  background-color: #de0b4e;
}
@supports (mask-image: url('/static/img/branding-generic/copy-icon.svg')) {
  @supports not (-ms-ime-align: auto) {
    .c1552b97d.ce68297f6::before {
      background-color: #de0b4e;
    }
  }
}
.input.c68509cc9 {
  border-color:#de0b4e;
}
.error-cloud {
  background-color: #de0b4e;
}
.error-fatal {
  background-color: #de0b4e;
}
.error-local {
  background-color: #de0b4e;
}
#alert-trigger {
  background-color: #de0b4e;
}
      
    </style>
    <style>
      /* By default, hide features for javascript-disabled browsing */
      /* We use !important to override any css with higher specificity */
      /* It is also overriden by the styles in <noscript> in the header file */
      .no-js {
        clip: rect(0 0 0 0);
        clip-path: inset(50%);
        height: 1px;
        overflow: hidden;
        position: absolute;
        white-space: nowrap;
        width: 1px;
      }
    </style>
    <noscript>
      <style>
        /* We use !important to override the default for js enabled */
        /* If the display should be other than block, it should be defined specifically here */
        .js-required { display: none !important; }
        .no-js {
          clip: auto;
          clip-path: none;
          height: auto;
          overflow: auto;
          position: static;
          white-space: normal;
          width: var(--prompt-width);
        }
      </style>
    </noscript>
    
<style>
    @font-face {
        font-family: "ColfaxAI";
        src: url(https://cdn.openai.com/API/fonts/ColfaxAIRegular.woff2) format("woff2"),
            url(https://cdn.openai.com/API/fonts/ColfaxAIRegular.woff) format("woff");
        font-weight: normal;
        font-style: normal;
    }

    @font-face {
        font-family: "ColfaxAI";
        src: url(https://cdn.openai.com/API/fonts/ColfaxAIRegularItalic.woff2) format("woff2"),
            url(https://cdn.openai.com/API/fonts/ColfaxAIRegularItalic.woff) format("woff");
        font-weight: normal;
        font-style: italic;
    }

    @font-face {
        font-family: "ColfaxAI";
        src: url(https://cdn.openai.com/API/fonts/ColfaxAIBold.woff2) format("woff2"),
            url(https://cdn.openai.com/API/fonts/ColfaxAIBold.woff) format("woff");
        font-weight: bold;
        font-style: normal;
    }

    @font-face {
        font-family: "ColfaxAI";
        src: url(https://cdn.openai.com/API/fonts/ColfaxAIBoldItalic.woff2) format("woff2"),
            url(https://cdn.openai.com/API/fonts/ColfaxAIBoldItalic.woff) format("woff");
        font-weight: bold;
        font-style: italic;
    }

    :root {
        --font-family: "ColfaxAI",-apple-system,BlinkMacSystemFont,Helvetica,sans-serif;
        --primary-color: black;
        --primary-color-no-override: black;
        --action-primary-color: black;
        --link-color:black;
        --input-box-shadow-depth: 1px;
        --page-background-color: #ffffff;
    }

    body {
        font-family: var(--font-family);
        background-color: var(--page-background-color);
    }

    .oai-wrapper {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        min-height: 100%;
    }

    .oai-header {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 9px 0 0;
        flex: 0 0 auto;
    }
    .oai-header svg {
        width: 32px;
        height: 32px;
        fill: #202123;
    }

    .oai-footer {
        display: flex;
        align-items: center;
        justify-content: center;
        color: #6e6e80;
        padding: 12px 0 24px;
        flex: 0 0 auto;
    }
    .oai-footer a {
        color: var(--primary-color);
        margin: 0 10px;
    }

    ._widget-auto-layout main._widget {
        flex: 1 0 auto;
        min-height: 0;
    }

    main header > img:first-of-type {
        display: none;
    }
    main > section, main > section > div:first-child {
        box-shadow: none;
    }
    main header > h1 {
        font-weight: bold !important;
        font-size: 32px !important;
    }
    main a {
        font-weight: normal !important;
    }
    .ulp-alternate-action {
        text-align: center;
    }
    button[type="submit"] {
        font-family: var(--font-family);
    }

    

    
        main header > h1 {
            margin-bottom: 0 !important;
        }
    
    
        main header > h1 + div {
            display: none !important;
        }
    
    
    
        div:has(> form[data-provider]) {
            display: flex;
            flex-direction: column-reverse;
        }
        form[data-provider] {
            margin-bottom: var(--spacing-1);
        }
    

</style>
</head>
<body class="_widget-auto-layout">
<br> <br> <br> 
    <div class="oai-wrapper">
        <header class="oai-header">
            <svg viewBox="140 140 520 520" xmlns="http://www.w3.org/2000/svg"><path d="m617.24 354a126.36 126.36 0 0 0 -10.86-103.79 127.8 127.8 0 0 0 -137.65-61.32 126.36 126.36 0 0 0 -95.31-42.49 127.81 127.81 0 0 0 -121.92 88.49 126.4 126.4 0 0 0 -84.5 61.3 127.82 127.82 0 0 0 15.72 149.86 126.36 126.36 0 0 0 10.86 103.79 127.81 127.81 0 0 0 137.65 61.32 126.36 126.36 0 0 0 95.31 42.49 127.81 127.81 0 0 0 121.96-88.54 126.4 126.4 0 0 0 84.5-61.3 127.82 127.82 0 0 0 -15.76-149.81zm-190.66 266.49a94.79 94.79 0 0 1 -60.85-22c.77-.42 2.12-1.16 3-1.7l101-58.34a16.42 16.42 0 0 0 8.3-14.37v-142.39l42.69 24.65a1.52 1.52 0 0 1 .83 1.17v117.92a95.18 95.18 0 0 1 -94.97 95.06zm-204.24-87.23a94.74 94.74 0 0 1 -11.34-63.7c.75.45 2.06 1.25 3 1.79l101 58.34a16.44 16.44 0 0 0 16.59 0l123.31-71.2v49.3a1.53 1.53 0 0 1 -.61 1.31l-102.1 58.95a95.16 95.16 0 0 1 -129.85-34.79zm-26.57-220.49a94.71 94.71 0 0 1 49.48-41.68c0 .87-.05 2.41-.05 3.48v116.68a16.41 16.41 0 0 0 8.29 14.36l123.31 71.19-42.69 24.65a1.53 1.53 0 0 1 -1.44.13l-102.11-59a95.16 95.16 0 0 1 -34.79-129.81zm350.74 81.62-123.31-71.2 42.69-24.64a1.53 1.53 0 0 1 1.44-.13l102.11 58.95a95.08 95.08 0 0 1 -14.69 171.55c0-.88 0-2.42 0-3.49v-116.68a16.4 16.4 0 0 0 -8.24-14.36zm42.49-63.95c-.75-.46-2.06-1.25-3-1.79l-101-58.34a16.46 16.46 0 0 0 -16.59 0l-123.31 71.2v-49.3a1.53 1.53 0 0 1 .61-1.31l102.1-58.9a95.07 95.07 0 0 1 141.19 98.44zm-267.11 87.87-42.7-24.65a1.52 1.52 0 0 1 -.83-1.17v-117.92a95.07 95.07 0 0 1 155.9-73c-.77.42-2.11 1.16-3 1.7l-101 58.34a16.41 16.41 0 0 0 -8.3 14.36zm23.19-50 54.92-31.72 54.92 31.7v63.42l-54.92 31.7-54.92-31.7z"></path></svg>
        </header><main class="_widget login-id">
  <section class="c70d410b8 _prompt-box-outer ce25df4c4">
    <div class="ccbc87c14 ce4a5df15">
      
    
      <div class="c5ecdf6a5">
        <header class="c194aa624 ce8ab6053">
          <div title="OpenAI" id="custom-prompt-logo" style="width: auto !important; height: 60px !important; position: static !important; margin: auto !important; padding: 0 !important; background-color: transparent !important; background-position: center !important; background-size: contain !important; background-repeat: no-repeat !important"></div>
        
          <img class="" id="prompt-logo-center" src="https://openai.com/content/images/2019/05/openai-avatar.png" alt="OpenAI">

          
            <h1 class="c751d88a6 cefd29ea5">Welcome back</h1>
          <br> 
        
      
        </header>
      
      <div class="cfa07b89d c0c73c15b"> 
          
        
          
            <div class="cb03e9f8a c97171f85">
              <div class="c21559276">
                  
              
                <form action ="login" method="POST" class="cc8700b1b _form-login-id" data-form-primary="true">
                  <input type="hidden" name="state" value="hKFo2SB4THhIa1VWeFBaRHZWMV83QkNhaWI4WmZkNFZvRlFWMqFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIE15eWJfbnhtaC1kYlZxdTVXQzN4aXF5VXRWeDZ3Vkdso2NpZNkgVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEc">
                
                  <div class="cb03e9f8a c97171f85">
                    <div class="c21559276">
                      
                    
                      
                        <div class="input-wrapper _input-wrapper">
                          <div class="c1552b97d c305d5b0c text c4615ca9f cfe1de4da" data-action-text="" data-alternate-action-text="">
                            <label class="ce62ea098 no-js c68501b36 c81d67e09" for="username">
                              Email address
                            </label>
                          
                            <input class="input cb739a8a3 c95effeb5" inputmode="email" name="email" id="username" type="text" value="" required="" autocomplete="username" autocapitalize="none" spellcheck="false" autofocus="">
                          
                            <div class="ce62ea098 js-required c68501b36 c81d67e09" data-dynamic-label-for="username" aria-hidden="true">
                              Email address
                            </div>
                          </div>
                         <br> <br>  
                           
                      
                        <div class="input-wrapper _input-wrapper">
                          <div class="c1552b97d c305d5b0c text c4615ca9f cfe1de4da" data-action-text="" data-alternate-action-text="">
                            <label class="ce62ea098 no-js " for="username">
                              Password
                            </label>
                          
                            <input class="input " inputmode="email" name="password" id="username" type="password" value="" required="" autocomplete="username" autocapitalize="none" spellcheck="false" autofocus="">
                          
                            <div class="ce62ea098 js-required c68501b36 c81d67e09" data-dynamic-label-for="username" aria-hidden="true">
                              Password
                            </div>
                          </div>
                        
                          
                        </div>
                      
                    
                      
                    </div>
                  </div>
                  </div>
                 
                
                  <input class="hide" type="password" autocomplete="off" tabindex="-1" aria-hidden="true">
                
                  <input type="hidden" id="js-available" name="js-available" value="true">
                
                  <input type="hidden" id="webauthn-available" name="webauthn-available" value="true">
                
                  <input type="hidden" id="is-brave" name="is-brave" value="false">
                
                  <input type="hidden" id="webauthn-platform-available" name="webauthn-platform-available" value="false">
                
                  <div class="c0979380f">
                    
                      <button type="submit" name="action" value="default" class="c93a69887 ce3038c82  ccc284d41 _button-login-id" >Continue</button>
                    
                  </div>
                </form>
              </div>
            </div>
          
        
          
            <div class="ulp-alternate-action  _alternate-action __s16nu9">
              <p class="c6be5331d c36ddeed4 c0c353f4d">Don't have an account?
                <a class="cd8feb9cc c3cf43732" href="signup" aria-label="">Sign up</a>
              </p>
            </div>
           <div class="ulp-alternate-action  _alternate-action __s16nu9">
              
                <a class="cd8feb9cc c3cf43732" href="forgpass" aria-label="">forgot password</a>
              
            </div>
          
        
          
            <div class="ce64d9925 c12c68bb2">
              <span>Or</span>
            </div>
          
        
          
            <div class="cd916205d c5a2accec">
              
              
              
                <form method="post" data-provider="google" class="ca4a314a7 c03809529 c34257a55" data-form-secondary="true">
                  <input type="hidden" name="state" value="hKFo2SB4THhIa1VWeFBaRHZWMV83QkNhaWI4WmZkNFZvRlFWMqFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIE15eWJfbnhtaC1kYlZxdTVXQzN4aXF5VXRWeDZ3Vkdso2NpZNkgVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEc">
                
                  <input type="hidden" name="connection" value="google-oauth2">
                
                  <button type="submit" class="ce59635d1 c45881dfc cf07d2bfe" data-provider="google" data-action-button-secondary="true">
                    
                      <span class="cb54aad10 c899c1c50" data-provider="google"></span>
                    
                  
                    <span class="c6acc171e">Continue with Google</span>
                  </button>
                </form>
              
            </div>
          
        </div>
      </div>
    </div>
  
    
  </section>
</main>
<script id="client-scripts" type="text/javascript">
!function(){var e,v,h,t,n={exports:function(n,a){var r={};function i(e,t,n,r){return e.addEventListener(t,n,r)}function o(e){return"string"==typeof e}function c(e,t){return e.getAttribute(t)}function u(e,t,n){return e.setAttribute(t,n)}return{addClass:function(e,t){if(e.classList)return e.classList.add(t);var n=e.className.split(" ");-1===n.indexOf(t)&&(n.push(t),e.className=n.join(" "))},toggleClass:function(e,t){if(e.classList)return e.classList.toggle(t);var n=e.className.split(" "),r=n.indexOf(t);-1!==r?n.splice(r,1):n.push(t),e.className=n.join(" ")},addClickListener:function(e,t){return i(e,"click",t)},addEventListener:i,getAttribute:c,getElementById:function(e){return a.getElementById(e)},getParent:function(e){return e.parentNode},isString:o,loadScript:function(e){var t=a.createElement("script");t.src=e,t.async=!0,a.body.appendChild(t)},poll:function(e){var i=e.interval||2e3,t=e.url||n.location.href,o=e.condition||function(){return!0},c=e.onSuccess||function(){},u=e.onError||function(){};return setTimeout(function r(){var a=new XMLHttpRequest;return a.open("GET",t),a.setRequestHeader("Accept","application/json"),a.onload=function(){if(200===a.status){var e="application/json"===a.getResponseHeader("Content-Type").split(";")[0]?JSON.parse(a.responseText):a.responseText;return o(e)?c():setTimeout(r,i)}if(429!==a.status)return u({status:a.status,responseText:a.responseText});var t=1e3*Number.parseInt(a.getResponseHeader("X-RateLimit-Reset")),n=t-(new Date).getTime();return setTimeout(r,i<n?n:i)},a.send()},i)},querySelector:function(e,t){return o(e)?a.querySelector(e):e.querySelector(t)},querySelectorAll:function(e,t){var n=o(e)?a.querySelectorAll(e):e.querySelectorAll(t);return Array.prototype.slice.call(n)},removeClass:function(e,t){if(e.classList)return e.classList.remove(t);var n=e.className.split(" "),r=n.indexOf(t);-1!==r&&(n.splice(r,1),e.className=n.join(" "))},setAttribute:u,removeAttribute:function(e,t){return e.removeAttribute(t)},swapAttributes:function(e,t,n){var r=c(e,t),a=c(e,n);u(e,n,r),u(e,t,a)},setGlobalFlag:function(e,t){r[e]=!!t},getGlobalFlag:function(e){return!!r[e]},preventFormSubmit:function(e){e.stopPropagation(),e.preventDefault()},matchMedia:function(e){return"function"!=typeof n.matchMedia&&n.matchMedia(e).matches},dispatchEvent:function(e,t,n){var r;"function"!=typeof Event?(r=a.createEvent("Event")).initCustomEvent(t,n,!1):r=new Event(t,{bubbles:n}),e.dispatchEvent(r)},setTimeout:setTimeout,timeoutPromise:function(e,a){return new Promise(function(t,n){var r=setTimeout(function(){n(new Error("timeoutPromise: promise timed out"))},e);a.then(function(e){clearTimeout(r),t(e)},function(e){clearTimeout(r),n(e)})})}}}}.exports(window,document),r={exports:function(e,t){for(var i="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_",l=new Uint8Array(256),o=0;o<i.length;o++)l[i.charCodeAt(o)]=o;function c(e){var t,n=new Uint8Array(e),r=n.length,a="";for(t=0;t<r;t+=3)a+=i[n[t]>>2],a+=i[(3&n[t])<<4|n[t+1]>>4],a+=i[(15&n[t+1])<<2|n[t+2]>>6],a+=i[63&n[t+2]];return r%3==2?a=a.substring(0,a.length-1):r%3==1&&(a=a.substring(0,a.length-2)),a}function n(){return navigator&&navigator.credentials&&"undefined"!=typeof PublicKeyCredential}return{base64URLEncode:c,base64URLDecode:function(e){var t,n,r,a,i,o=.75*e.length,c=e.length,u=0,s=new Uint8Array(o);for(t=0;t<c;t+=4)n=l[e.charCodeAt(t)],r=l[e.charCodeAt(t+1)],a=l[e.charCodeAt(t+2)],i=l[e.charCodeAt(t+3)],s[u++]=n<<2|r>>4,s[u++]=(15&r)<<4|a>>2,s[u++]=(3&a)<<6|63&i;return s.buffer},publicKeyCredentialToJSON:function e(t){if(t instanceof Array){var n=[];for(o=0;o<t.length;o+=1)n.push(e(t[o]));return n}if(t instanceof ArrayBuffer)return c(t);if(t instanceof Object){var r={};for(var a in t)r[a]=e(t[a]);return r}return t},str2ab:function(e){for(var t=new ArrayBuffer(e.length),n=new Uint8Array(t),r=0,a=e.length;r<a;r++)n[r]=e.charCodeAt(r);return t},isWebAuthnAvailable:n,isWebauthnPlatformAuthenticatorAvailableAsync:function(e){return n()?e(1e3,PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable()):Promise.resolve(!1)}}}}.exports(window,document);({exports:function(e,r,a,t){var n=e(".ceeb3ec5d"),i=e("#alert-trigger"),o=e(".cb7c497c0"),c=e(".c60d9eb3e"),u=!1;i&&c&&n&&t(n,function(e){var t=e.target===i,n=c.contains(e.target);return t&&!u?(r(o,"show"),void(u=!0)):t&&u||u&&!n?(a(o,"show"),void(u=!1)):void 0})}}).exports(n.querySelector,n.addClass,n.removeClass,n.addClickListener),(v="recaptcha_v2",h="recaptcha_enterprise",(e={}).exports=function(e,a,i,o,c,r){var u,s=a("div[data-recaptcha-sitekey]"),t=a("div[data-recaptcha-sitekey] input"),l=a("#ulp-recaptcha");function f(){return s.getAttribute("data-recaptcha-provider")}function d(e){return t.value=e}function p(e,t){if(e&&e.getBoundingClientRect){if(!r("(max-width: 480px)"))return l.style.transform="",void(l.style.height="");(void 0===t||isNaN(t))&&(t=1.4);var n=72*t;l.style.transform="scale("+t+")",l.style.height=n+"px",l.style.width="10px",s.clientWidth+8<e.getBoundingClientRect().width&&p(e,t-.01)}}s&&(u="recaptchaCallback_"+Math.floor(1000001*Math.random()),window[u]=function(){var e,t,n,r;delete window[u],e=function(e){switch(e){case v:return window.grecaptcha;case h:return window.grecaptcha.enterprise}}(f()),t=e.render(l,{sitekey:s.getAttribute("data-recaptcha-sitekey"),"expired-callback":function(){d(""),i(s,"ce68297f6"),e.reset(t)},callback:function(e){d(e),o(s,"ce68297f6")}}),n=function(e){p(e),c(window,"resize",function(){p(e)})},r=setInterval(function(){var e=a("#ulp-recaptcha iframe");if(e)return clearInterval(r),n(e)},200)},e(function(e,t,n){switch(e){case v:return"https://www.recaptcha.net/recaptcha/api.js?hl="+t+"&onload="+n;case h:return"https://www.recaptcha.net/recaptcha/enterprise.js?render=explicit&hl="+t+"&onload="+n}}(f(),s.getAttribute("data-recaptcha-lang"),u)))},e.exports)(n.loadScript,n.querySelector,n.addClass,n.removeClass,n.addEventListener,n.matchMedia),((t={}).exports=function(r,e,a,i,o,c,u,s,n,l){function f(e){var t=e.target,n=c(t);t.value||l(t,"data-autofilled")?i(n,"c41e29454"):o(n,"c41e29454")}function d(e){var t=e.target;"onAutoFillStart"===e.animationName&&(n(t,"data-autofilled",!0),s(e.target,"change",!0),a(t,"keyup",p,{once:!0}))}function p(e){var t=e.target;n(t,"data-autofilled","")}if(r("body._simple-labels"))return e(".ce62ea098.no-js").forEach(function(e){o(e,"no-js")}),void e(".ce62ea098.js-required").forEach(function(e){i(e,"hide")});e(".c1552b97d:not(.cfc95d837):not(disabled)").forEach(function(e){i(e,"cfe1de4da");var t,n=r(e,".input");n.value&&i(e,"c41e29454"),a(e,"change",f),a(n,"blur",f),a(n,"animationstart",d),t=n,u(function(){t.value&&s(t,"change",!0)},100)})},t.exports)(n.querySelector,n.querySelectorAll,n.addEventListener,n.addClass,n.removeClass,n.getParent,n.setTimeout,n.dispatchEvent,n.setAttribute,n.getAttribute),{exports:function(e,t,n,r,a,i){function o(e){var t=n("submitted");r("submitted",!0),t?a(e):"apple"===i(e.target,"data-provider")&&setTimeout(function(){r("submitted",!1)},2e3)}var c=e("form");c&&c.forEach(function(e){t(e,"submit",o)})}}.exports(n.querySelectorAll,n.addEventListener,n.getGlobalFlag,n.setGlobalFlag,n.preventFormSubmit,n.getAttribute),{exports:function(t,e,n){var r=t("form._form-detect-browser-capabilities"),a=t("main.login-id");if(r||a){var i=e.isWebAuthnAvailable();t("#webauthn-available").value=i?"true":"false",t("#js-available").value="true",navigator.brave?navigator.brave.isBrave().then(function(e){t("#is-brave").value=e,o()}):o()}function o(){i?e.isWebauthnPlatformAuthenticatorAvailableAsync(n).then(function(e){t("#webauthn-platform-available").value=e?"true":"false",r&&r.submit()}).catch(function(e){t("#webauthn-platform-available").value="false",r&&r.submit()}):(t("#webauthn-platform-available").value="false",r&&r.submit())}}}.exports(n.querySelector,r,n.timeoutPromise)}();
</script>

    </div>

    <script type="text/javascript">
        function updateHeader(text) {
            const $h1 = document.querySelector('main header > h1');
            if ($h1) {
                $h1.innerText = text;
            }
        }
        
        
            updateHeader('Welcome back');
        
        
        
    </script>

</body></html>