<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Rooms</title>
        <link rel="stylesheet" href="/assets/css/app.css"/>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
        />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Archivo:ital,wght@0,100..900;1,100..900&family=Old+Standard+TT:ital,wght@0,400;0,700;1,400&family=Oswald:wght@200..700&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
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
            <a href="/"><img class="hotel-name" src="/assets/HotelName.svg" description="Hotel Name"></a>
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
    <section class="banner banner--rooms">
        <p class="section-name section-name--1">The Ultimate Luxury</p>
        <h1 class="section-title section-title--1">Ultimate Room</h1>
        <div class="links-container">
            <div class="links-container__box">
                <p class="link">Home</p>
                <p class="separator">|</p>
                <p class="link link--light">Rooms</p>
            </div>
        </div>
    </section>
    <section class="room-list">
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/HotelRoom.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Minimal Duplex Room</h2>
                <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                <p class="price">$345/Night</p>
                <p class="booking">Book now</p>
                </div>
            </article>
        </article>
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/HotelRoom2.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Romantic Duplex Room</h2>
                <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                <p class="price">$445/Night</p>
                <p class="booking">Book now</p>
                </div>
            </article>
        </article>
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/HotelRoom3.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Luxury Honeymoon Room</h2>
                <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                <p class="price">$500/Night</p>
                <p class="booking">Book now</p>
                </div>
            </article>
        </article>
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/Hotel-Room5.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Family Room</h2>
                <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                <p class="price">$600/Night</p>
                <p class="booking">Book now</p>
                </div>
            </article>
        </article>
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/Hotel-Room6.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Superb Modern Suite</h2>
                <p class="description">
                    Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                    <p class="price">$850/Night</p>
                    <p class="booking">Book now</p>
                </div>
            </article>
        </article>
        <article class="room-list__room" onclick="window.location.href='room-details.html'">
            <img src="../assets/Hotel-Room7.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="./assets/Bed.svg">
                <img class="icon" src="./assets/Wifi.svg">
                <img class="icon" src="./assets/Car.svg">
                <img class="icon" src="./assets/Snow.svg">
                <img class="icon" src="./assets/Gym.svg">
                <img class="icon" src="./assets/Cigar.svg">
                <img class="icon" src="./assets/Drink.svg">
            </article> 
            <article class="room-description-card room-description-card--rooms-page">
                <h2 class="title">Max Lux Suite</h2>
                <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipi<br>sicing elit, sed do eiusmod tempor.
                </p>
                <div class="booking-container">
                <p class="price">$1250/Night</p>
                <p class="booking">Book now</p>
                </div>
            </article>
        </article>
    </section>
    <nav class="rooms-pagination">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link page-link--icon" href="#">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link page-link--selected" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">...</a></li>
          <li class="page-item"><a class="page-link" href="#">10</a></li>
            <a class="page-link page-link--icon" href="#">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
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
<script src="../scripts/nav.js"></script>
<script src="../scripts/header.js"></script>
</html>
