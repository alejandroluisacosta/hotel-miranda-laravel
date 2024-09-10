<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Miranda</title>
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
    <section class="base">
      <h3 class="section-name section-name--1 section-name--base">THE ULTIMATE LUXURY EXPERIENCE</h3>
      <h1 class="section-title section-title--1">The Perfect Base For You</h1>
      <div class="header__buttons-container">
        <button class="button base__button--1" onclick="window.location.href='about.html'">LEARN MORE</button>
        <button class="button base__button--2" onclick="window.location.href='rooms.html'">SEE ROOMS</button>
      </div>
    </section>
    <form class="availability">
      <div class="input-container">
        <label class="availability__label" for="arrival-date">Arrival Date</label>
        <span class="material-symbols-outlined">
          calendar_today
        </span>
        <p class="availability__input">24th march 2020</p>
        <hr>
      </div>
      <div class="input-container">
        <label class="availability__label" for="departure-date">Departure Date</label>
        <span class="material-symbols-outlined">
          calendar_today
        </span>
        <p class="availability__input">30th march 2020</p>
        <hr>
      </div>
      <button class="availability__submit" type="submit">CHECK AVAILABILITY</button>
    </form>
    <div class="about-features-container">
        <section class="about">
          <div class="about__background">
            <p class="section-name">ABOUT US</p>
            <h1 class="section-title">Discover Our Underground</h1>
            <p class="about__text">
              50+ years on the market. 15+ top locations around the globe. 10.000+ happy visitors every year. Highly-trained professionals in every field. Are you a fan of quality? Hotel Miranda was made for you.
            </p>
            <button class="about__button" onclick="window.location.href='contact.html'">BOOK NOW</button>
          </div>
        </section>
        <section class="brand-features">
        <div class="brand-features__feature-container brand-features__feature-container--1">
          <div class="single-image-container" style="background-image: url('/assets/Professionals.jpeg');"></div>
          <div>
            <div class="content content--1">
              <img class="icon" src="./assets/StrongTeam.svg"/>
              <img class="icon--diluted" src="./assets/StrongTeamDiluted.jpeg"/>
              <h3 class="title">Strong Team</h3>
              <p class="description">Elite professional ready to make you have your dream vacation. Your relaxation is our mission.</p>
            </div>
          </div>
        </div>
        <div class="brand-features__feature-container brand-features__feature-container--2">
          <div class="brand-features__background-container">
            <div class="single-image-container" style="background-image: url('/assets/Luxury-Room.jpeg');"></div>
            <div class="content content--2">
              <img class="icon icon--calendar" src="./assets/ArrowCalendar.svg"/>
              <h3 class="title">Luxury Room</h3>
              <p class="description">Every detail matters at Miranda. If you visit our rooms, please be ready to fall in love.</p>
            </div>
          </div>
        </div>
        </section>
    </div>
    <section class="rooms">
      <p class="section-name">ROOMS</p>
      <h1 class="section-title">Hand Picked Rooms</h1>
      <article class="icon-bar icon-bar--mobile">
        <img class="icon" src="./assets/Bed.svg">
        <img class="icon" src="./assets/Wifi.svg">
        <img class="icon" src="./assets/Car.svg">
        <img class="icon" src="./assets/Snow.svg">
        <img class="icon" src="./assets/Gym.svg">
        <img class="icon" src="./assets/Cigar.svg">
        <img class="icon" src="./assets/Drink.svg">
      </article> 
      <div class="swiper swiper--rooms--mobile">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom.jpeg"/>
          <article class="room-description-card room-description-card--home">
            <h2 class="title">Minimal Duplex Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$345</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom2.jpeg"/>
            <article class="room-description-card room-description-card--home">
            <h2 class="title">Romantic Duplex Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$445</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom3.jpeg"/>
                    <article class="room-description-card room-description-card--home">
            <h2 class="title">Luxury Honeymoon Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$500</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom.jpeg"/>
          <article class="room-description-card room-description-card--home">
            <h2 class="title">Minimal Duplex Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$345</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom2.jpeg"/>
            <article class="room-description-card room-description-card--home">
            <h2 class="title">Romantic Duplex Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$445</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
        <div class="swiper-slide">
          <article class="icon-bar icon-bar--desktop">
            <img class="icon" src="./assets/Bed.svg">
            <img class="icon" src="./assets/Wifi.svg">
            <img class="icon" src="./assets/Car.svg">
            <img class="icon" src="./assets/Snow.svg">
            <img class="icon" src="./assets/Gym.svg">
            <img class="icon" src="./assets/Cigar.svg">
            <img class="icon" src="./assets/Drink.svg">
          </article> 
          <img class="image" src="../assets/HotelRoom3.jpeg"/>
                    <article class="room-description-card room-description-card--home">
            <h2 class="title">Luxury Honeymoon Room</h2>
            <p class="description">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
            </p>
            <p class="price">$500</p>
            <p class="divisor">/Night</p>
          </article>
        </div>
      </div>
      <div class="swiper-button-prev" id="swiper-button-prev--rooms"></div>
      <div class="swiper-button-next" id="swiper-button-next--rooms"></div>
      </div>
      <div class="swiper swiper--rooms--desktop">
        <div class="swiper-wrapper">
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom.jpeg');"></div>
            <article class="room-description-card room-description-card--home">
              <h2 class="title">Minimal Duplex Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$345</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom2.jpeg');"></div>
            <article class="room-description-card room-description-card--home">
              <h2 class="title">Romantic Duplex Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$445</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom3.jpeg');"></div>
            <article class="room-description-card room-description-card--home">
              <h2 class="title">Luxury Honeymoon Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$500</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom.jpeg');"></div>
            <article class="room-description-card room-description-card--home">
              <h2 class="title">Minimal Duplex Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$345</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom2.jpeg');"></div>
              <article class="room-description-card room-description-card--home">
              <h2 class="title">Romantic Duplex Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$445</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
          <div class="swiper-slide" onclick="window.location.href='room-details.html'">
            <article class="icon-bar icon-bar--desktop">
              <img class="icon" src="./assets/Bed.svg">
              <img class="icon" src="./assets/Wifi.svg">
              <img class="icon" src="./assets/Car.svg">
              <img class="icon" src="./assets/Snow.svg">
              <img class="icon" src="./assets/Gym.svg">
              <img class="icon" src="./assets/Cigar.svg">
              <img class="icon" src="./assets/Drink.svg">
            </article> 
            <div class="image single-image-container" style="background-image: url('/assets/HotelRoom3.jpeg');"></div>
            <article class="room-description-card room-description-card--home">
              <h2 class="title">Luxury Honeymoon Room</h2>
              <p class="description">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
              </p>
              <p class="price">$500</p>
              <p class="divisor">/Night</p>
            </article>
          </div>
        </div>
        <div class="swiper-button-prev" id="swiper-button-prev--rooms"></div>
        <div class="swiper-button-next" id="swiper-button-next--rooms"></div>
        </div>
      
    </section>
    <div class="intro-video-container">
      <section class="intro-video">
        <div class="content-container">
          <p class="section-name">INTRO VIDEO</p>
          <h2 class="section-title">Meet Our Luxury Place</h2>
          <p class="description">
            Give yourself the gift to meet a place that can induce a deep, renewing experience. A place where all the senses are fully engaged with an intense, captivating narrative. Give yourself the gift to know more about Miranda. 
          </p>
        </div>
        <video autoplay muted loop>
          <source src="./assets/Hotel-Video.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
        <button class="button" onclick="window.location.href='contact.html'">BOOK NOW</button>
      </section>
      <div class="decorative-square"></div>
    </div>
    <section class="facilities">
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
    <section class="menu">
      <img class="donut" src="assets/Donut.svg"/>
      <img class="donut--desktop" src="assets/Donut-Desktop.svg"/>
      <div class="title-container">
        <div class="title-subcontainer">
          <h2 class="section-name">MENU</h2>
          <h2 class="section-title">Our Foods Menu</h2>
        </div>
        <div class="menu__buttons-container--desktop">
          <div class="button swiper-button-prev" id="swiper-button-next--menu"></div>
          <div class="button swiper-button-next" id="swiper-button-next--menu"></div>
        </div>
      </div>
      <div class="swiper swiper--menu">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="dishes">
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Eggs-Bacon.jpeg');">
                </div>
                <div class="description">
                  <h4 class="name">Eggs & Bacon</h4>
                  <p>
                    A classic dish, eggs and bacon, prepared with the finest ingredients for a truly exceptional meal.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Coffee.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Tea or Cofee</h4>
                  <p>
                    Awaken your senses with our delicious infusions to either start your day or relax in the afternoon.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish dish--last">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Chia.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Chia Oatmeal</h4>
                  <p>
                    The solution for our healthy guests is here: Eat deliciously while taking care of your body.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="dishes">
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Fruit-Parfait.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Fruit Parfait</h4>
                  <p>
                    Fruit, yogurt, fine cereals and syrup. The favorite choice for light breakfast eaters.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Marmalade.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Marmalade Selection</h4>
                  <p>
                    Sweet. Refreshing. Intense. Once on the table, few can resist our gourmet marmalade selection.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish dish--last">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Cheese-Selection.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Cheese Plate</h4>
                  <p>
                    Cheese + Wine + Miranda = A perfect evening talk.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="dishes">
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Eggs-Bacon.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Eggs & Bacon</h4>
                  <p>
                    A classic dish, eggs and bacon, prepared with the finest ingredients for a truly exceptional meal.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Coffee.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Tea or Cofee</h4>
                  <p>
                    Awaken your senses with our delicious infusions to either start your day or relax in the afternoon.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish dish--last">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Chia.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Chia Oatmeal</h4>
                  <p>
                    The solution for our healthy guests is here: Eat deliciously while taking care of your body.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="dishes">
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Fruit-Parfait.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Fruit Parfait</h4>
                  <p>
                    Fruit, yogurt, fine cereals and syrup. The favorite choice for light breakfast eaters.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Marmalade.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Marmalade Selection</h4>
                  <p>
                    Sweet. Refreshing. Intense. Once on the table, few can resist our gourmet marmalade selection.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
              <div class="dish dish--last">
                <div class="swiper-slide single-image-container" style="background-image: url('/assets/Cheese-Selection.jpeg');"></div>
                <div class="description">
                  <h4 class="name">Cheese Plate</h4>
                  <p>
                    Cheese + Wine + Miranda = A perfect evening talk.
                  </p>
                </div>
                <img class="arrow" src="./assets/Arrow-Right.png" alt="arrow"/>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="menu__buttons-container">
        <div class="button swiper-button-prev" id="swiper-button-next--menu"></div>
        <div class="button swiper-button-next" id="swiper-button-next--menu"></div>
      </div>
    </section>
    <section class="carousel">
      <div class="swiper swiper--auto">
        <div class="swiper-wrapper">
          <div class="single-image-container swiper-slide" style="background-image: url('/assets/Woman-At-Room.jpeg');"></div>
          <div class="single-image-container swiper-slide" style="background-image: url('/assets/Hotel-Reception.jpeg');"></div>
          <div class="single-image-container swiper-slide" style="background-image: url('/assets/HotelRoom4.jpeg');"></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </section>
    <section class="facts">
      <div class="facts__fact">
        <img src="assets/Rocket.svg"/>
        <div class="number-container">
          <p class="number">84k</p>
          <p class="plus">+</p>
        </div>
        <p class="text">Projects are Completed</p>
      </div>
      <div class="facts__fact">
        <img src="assets/Family.svg"/>
        <div class="number-container">
          <p class="number">10M</p>
          <p class="plus">+</p>
        </div>
        <p class="text">Worldwide Active Backers</p>
      </div>
      <div class="facts__fact">
        <img src="assets/Investment.svg"/>
        <div class="number-container">
          <p class="number">02k</p>
          <p class="plus">+</p>
        </div>
        <p class="text">Categories Served</p>
      </div>
      <div class="facts__fact">
        <img src="assets/Book.svg"/>
        <div class="number-container">
          <p class="number">100M</p>
          <p class="plus">+</p>
        </div>
        <p class="text">Idea Raised Funds</p>
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