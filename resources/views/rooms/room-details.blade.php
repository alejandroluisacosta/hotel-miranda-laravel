@extends('layouts.app')
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        @section('title', 'Room Details')
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
@section('header')
    @parent
@endsection
@section('content')
    <section class="banner banner--room-details">
        <p class="section-name section-name--1">The Ultimate Luxury</p>
        <h1 class="section-title section-title--1">Ultimate Room</h1>
        <div class="links-container">
            <div class="links-container__box">
                <p class="link">Home</p>
                <p class="separator">|</p>
                <p class="link link--light">Room Details</p>
            </div>
        </div>
    </section>
    <div class="info-availability-container">
        <section class="room-basic-info">
            <div class="info-container">
                <div class="name-container">
                    <p class="section-name">DOUBLE BED</p>
                    <p class="section-title section-title--room">Luxury Double Bed</p>
                </div>
                <div class="price-container">
                    <p class="price">$345</p>
                    <p class="divisor">/Night</p>
                </div>
            </div>
            <img src="./assets/HotelRoom2.jpeg"/>
            <p class="room-details-description room-details-description--desktop">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
            </p>
        </section>
        <form class="room-details-availability">
            <div class="title-container">
                <p class="title">Check Availability</p>
            </div>
            <label class="label" for="check-in-date">Check In</label>
            <div class="input" id="check-in-date">
                <p>Fri, 14th June 2020</p>
                <img class="icon" src="./assets/Calendar.svg"/>
            </div>
            <label class="label" for="check-out-date">Check Out</label>
            <div class="input" id="check-out-date">
                <p>Sun, 16th June 2020</p>
                <img class="icon" src="./assets/Calendar.svg"/>
            </div>
            <button>CHECK AVAILABILITY</button>
        </form>
    </div>
    <section class="room-details-description room-details-description--mobile">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
        </p>
    </section>
    <section class="amenities">
        <p class="section-title">Amenities</p>
        <hr>
        <div class="amenities-container">
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Air-Conditioner.svg"/>
                <p class="name">Air conditioner</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Breakfast.svg"/>
                <p class="name">Breakfast</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Cleaning.svg"/>
                <p class="name">Cleaning</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Grocery.svg"/>
                <p class="name">Grocery</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Shop.svg"/>
                <p class="name">Shop near</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Support.svg"/>
                <p class="name">24/7 Online Support</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Security.svg"/>
                <p class="name">Smart Security</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Wifi.svg"/>
                <p class="name">High speed wifi</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Kitchen.svg"/>
                <p class="name">Kitchen</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Shower.svg"/>
                <p class="name">Shower</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Bed.svg"/>
                <p class="name">Single bed</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Towel.svg"/>
                <p class="name">Towels</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Locker.svg"/>
                <p class="name">Strong Locker</p>
            </div>
            <div class="amenity">
                <img class="icon" src="./assets/Amenities-Team.svg"/>
                <p class="name">Expert Team</p>
            </div>
        </div>
    </section>
    <section class="founder-info">
        <div class="founder-image">
            <img class="founder-image" src="./assets/Founder-Image.jpeg"/>
            <div class="icon-container">
                <img class="icon" src="/assets/Check.svg"/>
            </div>
        </div>
        <p class="founder-name">Timothy Ferriss</p>
        <p class="founder-title">FOUNDER, QUX CO.</p>
        <p class="description">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
        </p>
    </section>
    <section class="cancellation">
        <p class="title">Cancellation</p>
        <hr>
        <p class="description">
            Phasellus volutpat neque a tellus venenatis, a euismod augue facilisis. Fusce ut metus mattis, consequat metus nec, luctus lectus. Pellentesque orci quis hendrerit sed eu dolor. Cancel up to 14 days to get a full refund.
        </p>
    </section>
    <section class="related-rooms">
        <p class="title">Related Rooms</p>
        <hr>
        <div class="swiper swiper--related-rooms">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="../assets/HotelRoom2.jpeg"/>
                    <article class="room-description-card room-description-card--rooms-page">
                        <article class="icon-bar">
                            <img class="icon" src="./assets/Bed.svg">
                            <img class="icon" src="./assets/Wifi.svg">
                            <img class="icon" src="./assets/Car.svg">
                            <img class="icon" src="./assets/Snow.svg">
                            <img class="icon" src="./assets/Gym.svg">
                            <img class="icon" src="./assets/Cigar.svg">
                            <img class="icon" src="./assets/Drink.svg">
                          </article> 
                        <h2 class="title">Romantic Double Room</h2>
                      <p class="description">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                      </p>
                      <div class="booking-container">
                        <p class="price">$445/Night</p>
                        <p class="booking">Book now</p>
                      </div>
                    </article>
                </div>
                <div class="swiper-slide">
                    <img src="../assets/HotelRoom3.jpeg"/>
                    <article class="room-description-card room-description-card--rooms-page">
                        <article class="icon-bar">
                            <img class="icon" src="./assets/Bed.svg">
                            <img class="icon" src="./assets/Wifi.svg">
                            <img class="icon" src="./assets/Car.svg">
                            <img class="icon" src="./assets/Snow.svg">
                            <img class="icon" src="./assets/Gym.svg">
                            <img class="icon" src="./assets/Cigar.svg">
                            <img class="icon" src="./assets/Drink.svg">
                          </article> 
                        <h2 class="title">Luxury Honeymoon Room</h2>
                      <p class="description">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.
                      </p>
                      <div class="booking-container">
                        <p class="price">$500/Night</p>
                        <p class="booking">Book now</p>
                      </div>
                    </article>
                </div>
            </div>
            <div class="swiper-button-prev" id="swiper-button-prev--rooms"></div>
            <div class="swiper-button-next" id="swiper-button-next--rooms"></div>
        </div>
    </section>
@endsection
@section('footer')
    @parent
@endsection
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</html>