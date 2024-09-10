<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Contact</title>
        <link rel="stylesheet" href="/assets/css/app.css"/>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
        />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Archivo:ital,wght@0,100..900;1,100..900&family=Old+Standard+TT:ital,wght@0,400;0,700;1,400&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <style>
          .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24
          }
          </style>
    </head>
<body>
    <div class="header-container">
        <div class="black-strip"></div>
        <p class="slogan">We make you feel comfortable</p>
        <header class="header">
            <span class="hamburger-menu material-symbols-outlined">
            menu
            </span>
            <div class="logo">
                <a href="/"><p>H</p></a>
            </div>
                <a href="/"><img class="hotel-name" src="./assets/HotelName.svg" description="Hotel Name"></a>
            <ul class="desktop-nav">
                <a href="/about.html"><li class="nav-link">About Us</li></a>
                <a href="/rooms.html"><li class="nav-link">Rooms</li></a>
                <a href="/offers.html"><li class="nav-link">Offers</li></a>
                <a href="/contact.html"><li class="nav-link">Contact</li></a>
            </ul>
            <img class="icon icon--profile" src="./assets/User.svg"/>
            <img class="icon icon--search" src="./assets/Search.svg"/>
        </header>
        <nav class="mobile-nav">
            <ul>
            <a href="/about.html"><li class="nav-link">About Us</li></a>
            <a href="/rooms.html"><li class="nav-link">Rooms</li></a>
            <a href="/offers.html"><li class="nav-link">Offers</li></a>
            <a href="/contact.html"><li class="nav-link">Contact</li></a>
            </ul>
        </nav>
    </div>
    <section class="banner banner--contact">
        <p class="section-name section-name--1">The Ultimate Luxury</p>
        <h1 class="section-title section-title--1">New Details</h1>
        <div class="links-container">
            <div class="links-container__box">
                <p class="link">Home</p>
                <p class="separator">|</p>
                <p class="link link--light">Blog</p>
            </div>
        </div>
    </section>
    <section class="info">
        <div class="info__container">
            <p class="number number--1">01</p>
            <img src="./assets/Hotel-Address.svg"/>
            <div class="text-container">
                <p class="title">
                    Hotel Address
                </p>
                <p class="information">19/A, Cirikon City Hall Tower<br>New York, NYC</p>
            </div>
        </div>
        <div class="info__container">
            <p class="number number--2">02</p>
            <img src="./assets/Phone-Number.svg"/>
            <div class="text-container">
                <p class="title">
                    Phone Number
                </p>
                <p class="information">+ 97656 875 7864 7<br>+ 876 766 8675 766 6</p>
            </div>
        </div>
        <div class="info__container">
            <p class="number number--3">03</p>
            <img src="./assets/Hotel-Email.svg"/>
            <div class="text-container">
                <p class="title">
                    Email
                </p>
                <p class="information">info@webmail.com<br>jobs.webmail@mail.com</p>
            </div>
        </div>
    </section>
    <div class="single-image-container single-image-container--contact contact-image-container" style="background-image: url('/assets/Hotel-At-Lake.jpeg');"></div>
    </div>
    <form class="contact-form">
        <div class="row-of-two">
            <div class="input-container">
                <img class="icon" src="./assets/Contact-User.svg"/>
                <input type="text" placeholder="Your full name"/>
            </div>
            <div class="input-container">
                <img class="icon" src="./assets/Contact-Phone.svg"/>
                <input type="text" placeholder="Add your phone number"/>
            </div>
        </div>
        <div class="row-of-two">
            <div class="input-container">
                <img class="icon" src="./assets/Contact-Email.svg"/>
                <input type="text" placeholder="Enter email address"/>
            </div>
            <div class="input-container">
                <img class="icon" src="./assets/Contact-Subject.svg"/>
                <input type="text" placeholder="Enter subject"/>
            </div>
        </div>
        <div class="input-container input-container--text-area">
            <img class="icon" src="./assets/Contact-Pencil.svg"/>
            <textarea type="text-area" placeholder="Enter message"></textarea>
        </div>
        <button type="submit">SEND</button>
    </form>
    <footer class="footer">
        <div class="footer__background">
            <div class="hotel-info">
              <div class="logo-container">
              <div class="logo">H</div>
              <img class="hotel-name" src="./assets/HotelName-Footer.svg">
              </div>
              <p class="description">
              Lorem ipsum dolor sit amet, consect etur adipisicing elit, sed doing eius mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitat ion ullamco laboris nisi.
              </p>
              <div class="social">
              <div class="icon-container">
                  <img class="icon" src="./assets/Facebook.svg"/>
              </div>
              <div class="icon-container icon-container--twitter">
                  <img class="icon" src="./assets/Twitter.svg"/>
              </div>
              <div class="icon-container">
                  <img class="icon" src="./assets/Behance.svg"/>
              </div>
              <div class="icon-container">
                  <img class="icon" src="./assets/LinkedIn.svg"/>
              </div>
              <div class="icon-container">
                  <img class="icon" src="./assets/YouTube.svg"/>
              </div>
              </div>
            </div>
            <div class="services">
              <p class="services">Services</p>
              <div class="services-container">
                  <div>
                  <p>+ Restaurant & Bar</p>
                  <p>+ Swimming Pool</p>
                  <p>+ Wellness & Spa</p>
                  <p>+ Restaurant</p>
                  <p>+ Conference Room</p>
                  <p>+ Coctail Party House</p>
                  </div>
                  <div>
                  <p>+ Gaming Zone</p>
                  <p>+ Marriage Party</p>
                  <p>+ Party Planning</p>
                  <p>+ Tour Consultancy</p>
                  </div>
              </div>
            </div>
            <div class="contact">
            <p class="contact__title">Contact Us</p>
            <div class="contact-container">
                <img class="icon" src="/assets/Phone.svg"/>
                <div class="text-container">
                <p class="name">Phone Number</p>
                <p class="value">+987 876 765 76 577</p>
                </div>
            </div>
            <div class="contact-container">
                <img class="icon" src="/assets/Email.svg"/>
                <div class="text-container">
                <p class="name">Email</p>
                <p class="value">info@hotelmiranda.com</p>
                </div>
            </div>
            <div class="contact-container contact-container--last">
                <img class="icon" src="/assets/Location.svg"/>
                <div class="text-container">
                <p class="name">Location</p>
                <p class="value">555 Main Street, Colorado USA.</p>
                </div>
            </div>
            </div>
        </div>
        <div class="legal-info">
            <p class="copyright">Copyright by@Example - 2020</p>
            <p class="terms">Terms of use&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;Privacy Environment Policy</p>
        </div> 
        </footer>
</body>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="../scripts/swiper.js"></script>
<script src="../scripts/nav.js"></script>
<script src="../scripts/header.js"></script>
</html>