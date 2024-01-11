<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com  -->
<html lang="en">
<head>
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
<body onload="startvideo()">
<!-- Header -->
    <header class="header">
            <nav class="nav container flex">
                    <a href="#" class="logo-content flex">
                        <i class='bx bx-coffee logo-icon'></i>
                       
                        <span class="logo-text">HS Group</span>
                    </a>

                    <div class="menu-content">
                            <ul class="menu-list flex">
                                    <li><a href="index.jsp" class="nav-link ">home</a></li>
                                    <li><a href="About" class="nav-link active-navlink">About</a></li>
                                    <!-- <li><a href="#menu" class="nav-link">service</a></li>
                                    <li><a href="#review" class="nav-link">review</a></li> -->
                                    <li><a href="gallery" class="nav-link ">Gallery</a></li>
                                   
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

<!-- Home Section -->
    <main>
        <section class="home" id="home">
                <div class="home-content">
                        <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                                <img src="assets/img/home/c1.jpg" alt="" class="home-img">

                                                <div class="home-details">
                                                        <div class="home-text">
                                                                 <video width="100%" height="110%" controls id="vid">
                      <source src="assets/video/WhatsApp Video 2021-05-14 at 11.02.10 PM.mp4" type="video/mp4">
                                           
                    </video>
                                                        </div>

                                                  </div>
                                                  </div>
                                                  </div>
<!-- <button class="button">Explore</button> -->
                          
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
   function startvideo(){
     document.getElementById("vid").play();
   }
 </script>


    
</body>
</html>