<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com  -->
<html lang="en">
<head>
<style> 
 .custom{
 background-color : black;
 
 }
 h2{
 color: white;
 font: 2.4rem;
 }
 p{
 color: white;
 }
 
 .gal{
 display : flex;
 justify-content :center;
 align-item : center ;
 felx-wrap: wrap;
 }
 
 .gal img {
 width :300px;
 height :220px;
 border : 2px solid #ff3d0036;
 border-radius :13px;
 box-shadow : 4px 7px 7px 0px #00000042;
 cursor :pointer ;
 margin :10px;
 transition :400ms;
 }
 
 .gal img:hover {
 filter : grayscale(1);
 transform :scale(1.03);
 }
 
 .con{
 display : flex;
 justify-content : center ;
 width : 90%;
 }
 .he{
 color : black;
 font-size : 18px;
 }
 
 {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
 
 
 
 


</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSGroup</title>

    <!-- Swiper JS CSS-->
    <!-- <link rel="stylesheet" href="assetscss/swiper-bundle.min.css"> -->
    <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"
/>

    <!-- Scroll Reveal -->
    <link rel="stylesheet" href="assets/css/scrollreveal.min.js">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        
    <!-- CSS -->
    
  
    <link rel="stylesheet" href="assets/css/style.css">
    
    
</head>
<body>
<!-- Header -->
    <header class="header custom">
            <nav class="nav container flex">
                    <a href="#" class="logo-content flex">
                        <i class='bx bx-coffee logo-icon'></i>
                       
                        <span class="logo-text">HS Group</span>
                    </a>

                    <div class="menu-content">
                            <ul class="menu-list flex">
                                    <li><a href="index.jsp" class="nav-link ">home</a></li>
                                    <li><a href="About" class="nav-link">about</a></li>
                                 <!--    <li><a href="#menu" class="nav-link">service</a></li>
                                    <li><a href="#review" class="nav-link">review</a></li> -->
                                    <li><a href="gallery" class="nav-link active-navlink">Gallery</a></li>
                                    <li><a href="login" class="nav-link">Our Courses</a></li>
                                     <li><a href="#newsletter" class="nav-link">Contact</a></li>
                            </ul>
                            
                            <div class="media-icons flex">
                                    <a href="https://www.facebook.com"><i class='bx bxl-facebook'></i></a>
                                    <a href="https://twitter.com/i/flow/login"><i class='bx bxl-twitter' ></i></a>
                                    <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt' ></i></a>
                                    <a href="https://github.com/login"><i class='bx bxl-github'></i></a>
                                    <a href="https://www.youtube.com/login"><i class='bx bxl-youtube'></i></a>
                            </div>

                            <i class='bx bx-x navClose-btn'></i>
                        </div>
                        
                        <div class="contact-content flex">
                            <!-- <i class='bx bx-phone phone-icon' ></i>
                            <span class="phone-number">0022-0303-2030</span> -->
                           
                             <a href="signup" class="nav-link">SignUP</a>
                            
                            
                        </div>

                        <i class='bx bx-menu navOpen-btn'></i>
                </nav>
        
    </header>
    
  <br> <br> <br>
  
  
  
<section class="section about" id="about">
                <div class="about-content container">
                        <div class="about-imageContent">
                        
                                <img src="assets/img/home/undraw_Going_up_re_86kg.png" alt="" class="">

                              
                        </div>

                        <div class="about-details">
                                <div class="about-text">
                                        <h4 class="content-subtitle"><i>Software Training Center and Consultancy</i></h4> <br> 
                                        <p class="he">Our results reflect the passion, <br>hardwork and efforts of our students and teachers.</p><br> 
                                        <p class="he">Our goal is to improve the skill of student and make their future more bright and develope them to achieve their goal.</p>
<br> 
                                       
                                </div>

                                <div class="about-buttons flex">
                                        <button class="button">About Us</button>
                                        <a href="#" class="about-link flex">
                                                <span class="link-text">see more</span>
                                                <i class='bx bx-right-arrow-alt about-arrowIcon'></i>
                                        </a>
                                </div>
                        </div>

                </div>
        </section>


  
    <section class="section review" id="review">
            <div class="review-container container">
                    <div class="review-text">
                            <h4 class="section-subtitle"><i>Placement Drive </i></h4>
                            <h2 class="section-title">What we Achived </h2>
                            <p class="section-description">Here is our students who worked hard from us and became successfull in their life.</p>
                    </div>

                    <div class="tesitmonial swiper mySwiper">
                            <div class="swiper-wrapper">
                                  
                                    <div class="testi-content swiper-slide flex">
                                    


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
            <div class="gal"> 
<br> <br> 
<div>
  <br> <br> 
<img src ="assets/img/home/c1.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 
<img src ="assets/img/home/c1.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 

</div>
</div> 
 
</div>

<div class="mySlides fade">

  <div class="gal"> 
<br> <br> 
<div>
  <br> <br> 
  <img src ="assets/img/home/c1.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 
<img src ="assets/img/home/c1.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 


</div>
</div> 

</div>

<div class="mySlides fade">
 
 <div class="gal"> 
<br> <br> 
<div>
  <br> <br> 
<img src ="assets/img/home/c1.jpg" alt=""> 

<img src ="assets/img/home/c1.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c2.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 
<img src ="assets/img/home/c3.jpg" alt=""> 

</div>
</div> 

</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</div>
</div>
</div>
                                    </div>
             
        </section>
  
  

     
     
     
     



    



    
<!-- Newsletter Section -->
        <section class="section newsletter" id="newsletter">
            <div class="newletter-container container">
                <a href="#" class="logo-content flex">
                        
                        <span class="logo-text">Contact Us</span>
                    </a>

                    <p class="section-description">Need more details? we will be happy to patiently explain everything that you want to know. just send the message below , and you can contact us with our email/whatsapp or other social handels.

</p>

                    <div class="newsletter-inputBox">
                            <input type="text" placeholder="Your Name" class="newletter-input">
                            
                            <!-- <button class="button newsletter-button">Subscribe</button> -->
                    </div>
                    <div class="newsletter-inputBox">
                            <input type="email" placeholder="Your Email" class="newletter-input">
                            
                            <!-- <button class="button newsletter-button">Subscribe</button> -->
                    </div>
                    <div class="newsletter-inputBox">
                            <input type="email" placeholder="Your Message" class="newletter-input">
                            <!-- <textarea placeholder="Your Email" class="newletter-input" id="myTextarea"></textarea> -->
                            
                            <!-- <button class="button newsletter-button">Subscribe</button> -->
                    </div>
                    <div class="newsletter-inputBox">
                            
                            
                            <button type="submit" class="button">Send Message</button>
                    </div>
                    
                     <br>
                     

                    <div class="newsletter media-icons flex">
                        <a href="https://www.facebook.com"><i class='bx bxl-whatsapp quote-icon' ></i></a>
                        <a href="https://www.facebook.com"><i class='bx bxs-envelope bx-tada quote-icon' ></i></a>
                        <a href="https://twitter.com/i/flow/login"><i class='bx bxl-facebook quote-icon' ></i></a>
                        <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt quote-icon' ></i></a>
                        <a href="https://github.com/login"><i class='bx bxl-github quote-icon'></i></a>
                        <a href="https://www.youtube.com/login"><i class='bx bxl-youtube quote-icon'></i></a>
                </div>
            </div>
        </section>
        
<!-- Brand Section -->
       <!-- <section class="section review" id="review">
            <div class="review-container container">
                    <h4 class="section-subtitle"><i>Developed By</i></h4>

               <div class="tesitmonial swiper mySwiper">
                            <div class="swiper-wrapper">
                                    
                                    <div class="testi-content swiper-slide flex">
                                           <img src="assets/img/testimonials/testimonials-2.jpg" alt="" class="credit-img">
                                            
                                            

                                            <div class="testi-personDetails credit-name flex">
                                                    <span class="name">Rajkamal Hatwar</span>
                                                    
                                            </div>
                                            
                                            <i class='bx bxs-quote-alt-left quote-icon'></i>
                                             <div class="media-icons2 credit-icons flex">
                                                       <a href="https://www.facebook.com"><i class='bx bxl-facebook quote-icon'></i></a>
                                                     <a href="https://twitter.com/i/flow/login"><i class='bx bxl-linkedin'></i></a>
                                                     <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt' ></i></a>
                                                     <a href="https://github.com/login"><i class='bx bxl-github'></i></a>
                                                         <a href="https://www.youtube.com/login"><i class='bx bxl-youtube quote-icon'></i></a>
                                             </div>
                                            <div class="newsletter2 media-icons2 flex">
                                                   <a href="https://www.facebook.com"><i class='bx bxl-facebook'></i></a>
                                                   <a href="https://twitter.com/i/flow/login"><i class='bx bxl-linkedin' ></i></a>
                                                   <a href="https://www.instagram.com/accounts/login"><i class='bx bxl-instagram-alt' ></i></a>
                                                    <a href="https://github.com/login"><i class='bx bxl-github'></i></a>
                                                      <a href="https://www.youtube.com/login"><i class='bx bxl-youtube'></i></a>
                                            </div>
                                    </div>
                                    <div class="testi-content swiper-slide flex">
                                            <img src="assets/img/testimonials/testimonials-3.jpg" alt="" class="review-img">
                                           
                                           

                                            <div class="testi-personDetails flex">
                                                    <span class="name"> Vivek Padole</span>
                                                    <span class="job">Virtual Galaxy, Nagpur</span>
                                            </div>
                                    </div>
                                    
                                </div>
                                <div class="swiper-button-next swiper-navBtn"></div>
                                <div class="swiper-button-prev swiper-navBtn"></div>
                                <div class="swiper-pagination"></div>
                    </div>
                    
             
                    
                    
            </div>
        </section> -->
    
<!-- Footer Section -->
        <footer class="section footer">
            <div class="footer-container container">
                    <div class="footer-content">
                        <a href="#" class="logo-content flex">
                                <i class='bx bx-coffee logo-icon'></i>
                                <span class="logo-text">HS Group</span>
                            </a>

                            <p class="content-description">We are team that develope students and create their future bright and fill them with knowledge.</p>

                            <div class="footer-location flex">
                                <i class='bx bx-map map-icon'></i>
                                
                                <div class="location-text">
                                        Near New Nandanvan Layout Nandanvan, Nagpur, Maharashtra 440024
                                </div>
                            </div>
                    </div>

                    <div class="footer-linkContent">
                            <ul class="footer-links">
                                    <h4 class="footerLinks-title">Facility</h4>

                                    <li><a href="#" class="footer-link">Private Room</a></li>
                                    <li><a href="#" class="footer-link">Meeting Room</a></li>
                                    <li><a href="#" class="footer-link">Event Room</a></li>
                                    <li><a href="#" class="footer-link">Creative Studio</a></li>
                                    <li><a href="#" class="footer-link">Custom Room</a></li>
                            </ul>
                            <ul class="footer-links">
                                    <h4 class="footerLinks-title">Facility</h4>

                                    <li><a href="#" class="footer-link">Coffee</a></li>
                                    <li><a href="#" class="footer-link">Beverages</a></li>
                                    <li><a href="#" class="footer-link">Dishes</a></li>
                            </ul>
                            <ul class="footer-links">
                                    <h4 class="footerLinks-title">Support</h4>

                                    <li><a href="#" class="footer-link">About Us</a></li>
                                    <li><a href="#" class="footer-link">FAQs</a></li>
                                    <li><a href="#" class="footer-link">Private Policy</a></li>
                                    <li><a href="#" class="footer-link">Help Us</a></li>
                            </ul>
                    </div>
            </div>
            <div class="footer-copyRight">&#169; HSGroup All rigths reserved</div>
        </footer>

<!-- Scroll Up -->
        <a href="#home" class="scrollUp-btn flex">
                <i class='bx bx-up-arrow-alt scrollUp-icon'></i>
        </a>

</main>

<!-- Swiper JS -->
<!-- <script src="assets/js/swiper-bundle.min.js"></script> -->
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<!-- Scroll Reveal -->
<script src="assets/js/scrollreveal.js"></script>

<!-- JavaScript -->
    <script src="assets/js/script.js"></script>
    
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}
</script>


    
</body>
</html>