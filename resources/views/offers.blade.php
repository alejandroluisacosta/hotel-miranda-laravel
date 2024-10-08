@extends('layouts.app')
@section('content')
    <section class="banner banner--offers">
        <p class="section-name section-name--1">The Ultimate Luxury</p>
        <h1 class="section-title section-title--1">Our Offers</h1>
        <div class="links-container">
            <div class="links-container__box">
                <p class="link">Home</p>
                <p class="separator">|</p>
                <p class="link link--light">Offers</p>
            </div>
        </div>
    </section>
    @foreach ($roomsOnOffer as $room)
    <article class="room-offer">
        <div class="image-container">
            <img class="image" src="{{ $room->type->images->first()->url }}"/>
            <div class="prices-container prices-container--mobile">
                <div class="old-price-container">
                    <p class="old-price">${{ $room->rate }}</p>
                    <p class="old-price-divisor">/Night</p>
                </div>
                <div class="new-price-container">
                    <p class="new-price">${{ $room->offerRate }}</p>
                    <p class="new-price-divisor">/Night</p>
                </div>
            </div>
        </div>
        <div class="description-container">
            <div class="header-info">
                <div class="name-container">
                    <p class="section-name">{{ strtoupper($room->type->typeName) }}</p>
                    <p class="section-title">{{ $room->type->typeName }} {{ $room->name }}</p>
                </div>
                <div class="prices-container prices-container--desktop">
                    <div class="old-price-container">
                        <p class="old-price">${{ $room->rate }}</p>
                        <p class="old-price-divisor">/Night</p>
                    </div>
                    <div class="new-price-container">
                        <p class="new-price">${{ $room->offerRate }}</p>
                        <p class="new-price-divisor">/Night</p>
                    </div>
                </div>
            </div>
            <hr>
            <div class="bottom-info">
                <div class="bottom-info__description-container">
                    <p class="description">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehend erit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    </p>
                    <button class="desktop-button">BOOK NOW</button>
                </div>
                <div class="amenities">
                    <div class="amenities-container">
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Air-Conditioner.svg"/>
                            <p class="name">Air conditioner</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Wifi.svg"/>
                            <p class="name">High speed WiFi</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Breakfast.svg"/>
                            <p class="name">Breakfast</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Kitchen.svg"/>
                            <p class="name">Kitchen</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Cleaning.svg"/>
                            <p class="name">Cleaning</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Shower.svg"/>
                            <p class="name">Shower</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Grocery.svg"/>
                            <p class="name">Grocery</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Bed.svg"/>
                            <p class="name">Single bed</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Shop.svg"/>
                            <p class="name">Shop near</p>
                        </div>
                        <div class="amenity">
                            <img class="icon" src="/assets/images/Amenities-Towel.svg"/>
                            <p class="name">Towels</p>
                        </div>
                    </div>
                </div>
            </div>
            <button>BOOK NOW</button>
        </div>
    </article>
    @endforeach
    <section class="popular-list">
        <p class="section-name">POPULAR LIST</p>
        <p class="section-title">Popular Rooms</p>
        <div class="swiper swiper--popular-rooms">
            <div class="swiper-wrapper">
              @foreach ($popularRooms as $popularRoom)
                <div class="swiper-slide">
                    <img class="image" src="{{ $popularRoom->type->images->first()->url }}"/>
                    <article class="icon-bar icon-bar--rooms-page">
                        @foreach ($popularRoom->amenities as $amenity)
                            <img class="icon" src="/assets/images/{{$amenity->amenity}}.svg">
                        @endforeach
                    </article> 
                    <article class="room-description-card room-description-card--rooms-page">
                        <h2 class="title">{{ $popularRoom->type->typeName }} {{ $popularRoom->name }}</h2>
                        <p class="description">{{ $popularRoom->description }}</p>
                        <div class="booking-container">
                            <p class="price">${{ $popularRoom->rate }}/Night</p>
                            <p class="booking">Book now</p>
                        </div>
                    </article>
                </div>
              @endforeach
            </div>
            <div class="swiper-button-prev" id="swiper-button-prev--rooms"></div>
            <div class="swiper-button-next" id="swiper-button-next--rooms"></div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
@endsection