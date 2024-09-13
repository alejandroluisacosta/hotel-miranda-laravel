@extends('layouts.app')
@section('title', 'Rooms')
@section('header')
    @parent
@endsection
@section('content')
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/HotelRoom.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/HotelRoom2.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/HotelRoom3.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/Hotel-Room5.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/Hotel-Room6.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
        <article class="room-list__room" onclick="window.location.href='room-details'">
            <img src="/assets/images/Hotel-Room7.jpeg"/>
            <article class="icon-bar icon-bar--rooms-page">
                <img class="icon" src="/assets/images/Bed.svg">
                <img class="icon" src="/assets/images/Wifi.svg">
                <img class="icon" src="/assets/images/Car.svg">
                <img class="icon" src="/assets/images/Snow.svg">
                <img class="icon" src="/assets/images/Gym.svg">
                <img class="icon" src="/assets/images/Cigar.svg">
                <img class="icon" src="/assets/images/Drink.svg">
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
@endsection
@section('footer')
        @parent
@endsection
