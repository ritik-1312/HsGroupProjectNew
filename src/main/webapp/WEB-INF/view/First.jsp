 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>

<html lang="en">
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

<c:set var="sesreg" value="${sesreg}" />

<c:choose>
    <c:when test="${sesreg == 'success'}">
        <script type="text/javascript">
            Swal.fire({
                title: "OTP Sent Successfully!",
                text: "Check your email, please.",
                icon: "success",
            });
        </script>
    </c:when>
</c:choose>

<c:remove scope="session" var="sesreg" />



<c:set var="error" value="${error}" />
<c:choose>
    <c:when test="${error == 'fail'}">
        <script type="text/javascript">
            Swal.fire({
                title: "OTP Verification Failed!",
                text: "The entered OTP did not match. Please double-check and try again.",
                icon: "error",
            });
        </script>
    </c:when>
</c:choose>

<c:remove scope="session" var="error" />

    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-4 text-center">
              <div class="row">
                <div class="col-sm-12 mt-5 bgWhite">
                  <div class="title">
                    Verify OTP
                  </div>
                  
                  <form action="reg2" class="mt-5" method="post">
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(1)' maxlength=1  required>
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(2)' maxlength=1 required>
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(3)' maxlength=1 required>
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(4)' maxlength=1 required>
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(5)' maxlength=1 required>
    				<input class="otp" type="text" name="otpDigits" oninput='digitValidate(this)' onkeyup='tabChange(6)' maxlength=1 required>
    				<hr class="mt-4">
    				<button class='btn btn-primary btn-block mt-4 mb-4 customBtn submit'>Verify</button>
				</form>
				<button type="button" class="btn btn-outline-info" onclick="onResendButtonClick()" id="resendButton">Resend OTP</button><br>
				<p id="demo"></p>
				</div>
              </div>
            </div>
        </div>
      </div>
      
      
      <script>
   
   // Initialize the countdown time when the page loads
      var countDownDate = new Date().getTime() + (1 * 90 * 1000); // Current time + 1.30 minutes

      // Function to start the timer and disable the button
      function startTimer() {
          // Disable the button
          document.getElementById("resendButton").disabled = true;
          var countDownDate = new Date().getTime() + (1 * 90 * 1000); 
          // Update the count down every 1 second
          // var countDownDate = new Date().getTime() + (1 * 90 * 1000); 
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

              // If the count down is over, enable the button and clear the interval
              if (distance < 0) {
                  clearInterval(x);
                  document.getElementById("demo").innerHTML = "";
                  document.getElementById("resendButton").disabled = false;
              }
          }, 1000);
      }

      // Function to handle the button click
      function onResendButtonClick() {
          // Start the timer when the button is clicked
          startTimer();
          $.ajax({
              type: "POST",
              url: 'sendemail2',
              success: function (data) {
                  // Handle the response data if needed
                  console.log(data);
              },
              error: function (error) {
                  // Handle any errors that occurred during the AJAX request
                  console.error("Error:", error);
              }
          });
      }
      

      // Disable the button initially
      //document.getElementById("resendButton").disabled = true;

      // Attach the click event handler to the button
      //document.getElementById("resendButton").addEventListener("click", onResendButtonClick);

    //document.getElementById("resendButton").disabled = true;
</script>
</body>
</html>