@extends('layouts.app')
@section('title', 'About')
@section('content')
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
@endsection