<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<style type="text/css">
	p {
  text-align: center;
  font-size: 20px;
  margin-top: 0px;
}
	</style>
	
<link rel="stylesheet" href="assets/css/forOTP.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <script src="assets/js/forOTP.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<c:set var="sesfail" value="${sesfail}" />
	<c:choose>

		<c:when test="${sesfail == 'fail'}">
			<script type="text/javascript">
				Swal
						.fire({
							title : "OTP Verification Failed!",
							text : "The entered OTP did not match. Please double-check and try again.",
							icon : "error",
						});
			</script>
		</c:when>
	</c:choose>
	<c:remove scope="session" var="sesfail" />

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-4 text-center">
              <div class="row">
                <div class="col-sm-12 mt-5 bgWhite">
                  <div class="title">
                    Verify OTP
                  </div>
                  
                  <form action="cus" class="mt-5" method="post">
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(1)' maxlength=1 >
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(2)' maxlength=1 >
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(3)' maxlength=1 >
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(4)' maxlength=1 >
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(5)' maxlength=1 >
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(6)' maxlength=1 >
    				<hr class="mt-4">
    				<button class='btn btn-primary btn-block mt-4 mb-4 customBtn submit'>Verify</button>
				</form>
				<button type="button" class="btn btn-outline-info" id="resendButton" disabled>Resend OTP</button><br>
				<p id="demo"></p>
				</div>
              </div>
            </div>
        </div>
      </div>
      
      
      <script>
    // Set the time we're counting down to
    var countDownDate = new Date().getTime() + (1 * 90 * 1000); // Current time + 1.30 minutes

    // Update the count down every 1 second
    var x = setInterval(function () {

        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for minutes and seconds
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Output the result in an element with id="demo"
        document.getElementById("demo").innerHTML = minutes + "m " + seconds + "s ";

        // If the count down is over, enable the button and write some text 
        if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "";
            document.getElementById("resendButton").disabled = false;
        }
    }, 1000);

    // Disable the button initially
    document.getElementById("resendButton").disabled = true;
</script>
</body>
</html>




<%-- <html>

<head>
<link rel="stylesheet" href="assets/css/loginsignup.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<meta name="robots" content="noindex, nofollow">


<style id="custom-styles-container">
body {
	background: #ffffff;
	font-family: ulp-font, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica, sans-serif;
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

.ce3038c82 a, .ce3038c82 a:visited {
	color: #ffffff;
}

.c0f357190 {
	background-color: #0A8852;
}

.ceb37ec83 {
	background-color: #de0b4e;
}

@
supports (mask-image: url( '/static /img /branding-generic /copy-icon.svg
	')) { @supports not (-ms-ime-align:auto) {
    .c1552b97d.ce68297f6 ::before {
      background-color : #de0b4e;
	
}

}
}
.input.c68509cc9 {
	border-color: #de0b4e;
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
	clip: rect(0, 0, 0, 0);
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
.js-required {
	display: none !important;
}

.no-js {
	clip: auto;
	clip-path: none;
	height: auto;
	overflow: auto;
	position: static;
	white-space: normal;
	width: var(- -prompt-width);
}
</style>
</noscript>

<style>
@font-face {
	font-family: "ColfaxAI";
	src: url(https://cdn.openai.com/API/fonts/ColfaxAIRegular.woff2)
		format("woff2"),
		url(https://cdn.openai.com/API/fonts/ColfaxAIRegular.woff)
		format("woff");
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: "ColfaxAI";
	src: url(https://cdn.openai.com/API/fonts/ColfaxAIRegularItalic.woff2)
		format("woff2"),
		url(https://cdn.openai.com/API/fonts/ColfaxAIRegularItalic.woff)
		format("woff");
	font-weight: normal;
	font-style: italic;
}

@font-face {
	font-family: "ColfaxAI";
	src: url(https://cdn.openai.com/API/fonts/ColfaxAIBold.woff2)
		format("woff2"),
		url(https://cdn.openai.com/API/fonts/ColfaxAIBold.woff) format("woff");
	font-weight: bold;
	font-style: normal;
}

@font-face {
	font-family: "ColfaxAI";
	src: url(https://cdn.openai.com/API/fonts/ColfaxAIBoldItalic.woff2)
		format("woff2"),
		url(https://cdn.openai.com/API/fonts/ColfaxAIBoldItalic.woff)
		format("woff");
	font-weight: bold;
	font-style: italic;
}

:root { -
	-font-family: "ColfaxAI", -apple-system, BlinkMacSystemFont, Helvetica,
		sans-serif; -
	-primary-color: black; -
	-primary-color-no-override: black; -
	-action-primary-color: black; -
	-link-color: black; -
	-input-box-shadow-depth: 1px; -
	-page-background-color: #ffffff;
}

body {
	font-family: var(- -font-family);
	background-color: var(- -page-background-color);
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
	color: var(- -primary-color);
	margin: 0 10px;
}

._widget-auto-layout main._widget {
	flex: 1 0 auto;
	min-height: 0;
}

main header>img:first-of-type {
	display: none;
}

main>section, main>section>div:first-child {
	box-shadow: none;
}

main header>h1 {
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
	font-family: var(- -font-family);
}

main header>h1 {
	margin-bottom: 0 !important;
}

main header>h1+div {
	display: none !important;
}

div:has(>form[data-provider]) {
	display: flex;
	flex-direction: column-reverse;
}

form[data-provider] {
	margin-bottom: var(- -spacing-1);
}
</style>
</head>
<body class="_widget-auto-layout">
	<br>
	<br>
	<br>

	<c:set var="sesfail" value="${sesfail}" />
	<c:choose>

		<c:when test="${sesfail == 'fail'}">
			<script type="text/javascript">
				Swal
						.fire({
							title : "OTP Verification Failed!",
							text : "The entered OTP did not match. Please double-check and try again.",
							icon : "error",
						});
			</script>
		</c:when>
	</c:choose>
	<c:remove scope="session" var="sesfail" />

	<main class="_widget login-id">
		<section class="c70d410b8 _prompt-box-outer ce25df4c4">
			<div class="ccbc87c14 ce4a5df15">


				<div class="c5ecdf6a5">
					<header class="c194aa624 ce8ab6053">
						<div title="OpenAI" id="custom-prompt-logo"
							style="width: auto !important; height: 60px !important; position: static !important; margin: auto !important; padding: 0 !important; background-color: transparent !important; background-position: center !important; background-size: contain !important; background-repeat: no-repeat !important"></div>

						<i class='bx'><img alt=""
							src="assets/img/home/hs-group (1).ico"ï¿½></i>
						<!-- REPLACE WITH pswotp -->
						<h1 class="c751d88a6 cefd29ea5">OTP Verification</h1>
						<br>

					</header>

					<div class="cfa07b89d c0c73c15b">

						<div class="cb03e9f8a c97171f85">
							<div class="c21559276">


								<form action="cus" method="POST"
									class="cc8700b1b _form-login-id" data-form-primary="true">
									<input type="hidden" name="state"
										value="hKFo2SB4THhIa1VWeFBaRHZWMV83QkNhaWI4WmZkNFZvRlFWMqFur3VuaXZlcnNhbC1sb2dpbqN0aWTZIE15eWJfbnhtaC1kYlZxdTVXQzN4aXF5VXRWeDZ3Vkdso2NpZNkgVGRKSWNiZTE2V29USHROOTVueXl3aDVFNHlPbzZJdEc">

									<div class="cb03e9f8a c97171f85">
										<div class="c21559276">



											<div class="input-wrapper _input-wrapper">
												<div class="c1552b97d c305d5b0c text c4615ca9f cfe1de4da"
													data-action-text="" data-alternate-action-text="">
													<label class="ce62ea098 no-js c68501b36 c81d67e09"
														for="Enter the OTP"> Enter the OTP </label> <input
														class="input cb739a8a3 c95effeb5" inputmode="email"
														name="otp" id="username" type="text" value="" required=""
														autocomplete="username" autocapitalize="none"
														spellcheck="false" autofocus="">

													<div class="ce62ea098 js-required c68501b36 c81d67e09"
														data-dynamic-label-for="username" aria-hidden="true">
														Enter the OTP</div>
												</div>
												<br> <br>

											</div>
										</div>
									</div>

									<div class="c0979380f">

										<button type="submit" name="submit" value="default"
											class="c93a69887 ce3038c82  ccc284d41 _button-login-id">Continue</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


</body>
</html> --%>