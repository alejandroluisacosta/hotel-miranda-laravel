<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>About</title>
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
    <section class="banner banner--about">
        <p class="section-name section-name--1">The Ultimate Luxury</p>
        <h1 class="section-title section-title--1 section-title--banner">About Us</h1>
        <div class="links-container">
            <div class="links-container__box">
                <p class="link">Home</p>
                <p class="separator">|</p>
                <p class="link link--light">About</p>
            </div>
        </div>
    </section>
    <section class="about-video">
        <video autoplay loop muted>
            <source src="./assets/Hotel-Video.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <p class="text">
            50 years of experience have taught of how to take care, serve and entertain the best clients around the world.
        </p>
    </section>
    <section class="about-features">
        <div class="feature">
            <img class="icon" src="./assets/Breakfast.svg"/>
            <p class="description">BREAKFAST</p>
        </div>
        <div class="feature feature--selected">
            <img class="icon" src="./assets/Airplane.svg"/>
            <p class="description">AIRPORT PICKUP</p>
        </div>
        <div class="feature">
            <img class="icon" src="./assets/Location-Map.svg"/>
            <p class="description">CITY GUIDE</p>
        </div>
        <div class="feature feature--bbq">
          <img class="icon" src="./assets/BBQ.svg"/>
          <p class="description">BBQ PARTY</p>
        </div>
        <div class="feature">
            <img class="icon" src="./assets/Bedroom-Icon.svg"/>
            <p class="description">LUXURY ROOM</p>
        </div>
    </section>
    <section class="restaurant">
        <div class="restaurant__image-container">
            <img src="./assets/Restaurant.jpeg"/>
        </div>
        <div class="restaurant__content-container">
            <p class="section-name">RESTAURANT</p>
            <h2 class="section-title">Fall in love with our exquisite, unique and unforgettable cuisine</h2>
            <p class="description">
                Taste international flavors, connect with other cultures and live an electrifying experience by visiting the Michelin-Starred restaurants at Miranda
            </p>
            <button class="button">TAKE A TOUR</button>
        </div>
    </section>
    <section class="facilities facilities--about">
        <p class="section-name">FACILITIES</p>
        <h2 class="section-title">Core Features</h2>
        <div class="swiper swiper--facilities">
          <div class="swiper-wrapper">
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Ratings.svg"/>
                <p class="number">01</p>
                <p class="title">High Ratings</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Watch.svg"/>
                <p class="number">02</p>
                <p class="title">Quiet Hours</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Location-Facilities.svg"/>
                <p class="number">03</p>
                <p class="title">Best Locations</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Cancellation.svg"/>
                <p class="number">04</p>
                <p class="title">Free Cancellation</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Credit-Cards.png"/>
                <p class="number">05</p>
                <p class="title">Payment Options</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
            <div class="swiper-slide core-feature">
              <div class="slide-container">
                <img class="icon" src="./assets/Medal.svg"/>
                <p class="number">06</p>
                <p class="title">Special Offers</p>
                <p class="description">
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.
                </p>
              </div>
            </div>
          </div>
          <div class="swiper-pagination"></div>
      </div>
      </section>
      <section class="counter">
        <p class="section-name">COUNTER</p>
        <p class="section-title">Some Fun Facts</p>
        <div class="facts-container">
          <div class="counter-fact">
              <img src="./assets/Happy-User.svg"/>
              <div class="description">
                <h4 class="name">8000</h4>
                <p>
                  Happy Users
                </p>
              </div>
              <img class="arrow" src="./assets/Right-Arrow.svg"/>
            </div>
            <div class="counter-fact">
              <img src="./assets/Reviews.svg"/>
              <div class="description">
                <h4 class="name">10M</h4>
                <p>
                  Reviews & Appreciate
                </p>
              </div>
              <img class="arrow" src="./assets/Right-Arrow.svg"/>
            </div>
            <div class="counter-fact fact--last">
              <img src="./assets/Coverage.svg"/>
              <div class="description">
                <h4 class="name">100</h4>
                <p>
                  Country Coverage
                </p>
              </div>
              <img class="arrow" src="./assets/Right-Arrow.svg"/>
            </div>
          </div>
          <div class="swiper swiper--auto swiper--about">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="../assets/HotelRoom.jpeg"/>
                </div>
                <div class="swiper-slide">
                  <img src="../assets/HotelRoom2.jpeg"/>
                </div>
                <div class="swiper-slide">
                  <img src="../assets/HotelRoom3.jpeg"/>
                </div>
              </div>
              <div class="swiper-pagination"></div>
          </div>
          <div class="counter__images-container">
            <div class="single-image-container" style="background-image: url('/assets/Sunset-Pool.jpeg');">
            </div>
            <div class="single-image-container" style="background-image: url('/assets/Sunset-View.jpeg');">
            </div>
          </div>
      </section>
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