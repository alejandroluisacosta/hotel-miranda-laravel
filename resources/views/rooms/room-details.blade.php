@extends('layouts.app')
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
                    <p class="section-name">{{ strtoupper($room->type->typeName) }}</p>
                    <p class="section-title section-title--room">{{ $room->type->typeName }} {{ $room->name }}</p>
                </div>
                <div class="price-container">
                    <p class="price">${{ $room->rate }}</p>
                    <p class="divisor">/Night</p>
                </div>
            </div>
            <img src="{{ $room->type->images->first()->url }}"/>
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
                <input type="date" name="checkin" placeholder="Check-in date" class="room-details-availability__input"/>
                <img class="icon" src="/assets/images/Calendar.svg"/>
            </div>
            <label class="label" for="check-out-date">Check Out</label>
            <div class="input" id="check-out-date">
                <input type="date" name="checkout" placeholder="Check-out date" class="room-details-availability__input"/>
                <img class="icon" src="/assets/images/Calendar.svg"/>
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
                <img class="icon" src="/assets/images/Amenities-Air-Conditioner.svg"/>
                <p class="name">Air conditioner</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Breakfast.svg"/>
                <p class="name">Breakfast</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Cleaning.svg"/>
                <p class="name">Cleaning</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Grocery.svg"/>
                <p class="name">Grocery</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Shop.svg"/>
                <p class="name">Shop near</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Support.svg"/>
                <p class="name">24/7 Online Support</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Security.svg"/>
                <p class="name">Smart Security</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Wifi.svg"/>
                <p class="name">High speed wifi</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Kitchen.svg"/>
                <p class="name">Kitchen</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Shower.svg"/>
                <p class="name">Shower</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Bed.svg"/>
                <p class="name">Single bed</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Towel.svg"/>
                <p class="name">Towels</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Locker.svg"/>
                <p class="name">Strong Locker</p>
            </div>
            <div class="amenity">
                <img class="icon" src="/assets/images/Amenities-Team.svg"/>
                <p class="name">Expert Team</p>
            </div>
        </div>
    </section>
    <section class="founder-info">
        <div class="founder-image">
            <img class="founder-image" src="/assets/images/Founder-Image.jpeg"/>
            <div class="icon-container">
                <img class="icon" src="/assets/images/Check.svg"/>
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
                <?php foreach ($rooms->slice(0, 2) as $relatedRoom): ?>
                    <div class="swiper-slide">
                        <img src="<?= $relatedRoom->images()->first()->url; ?>"/>
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
                            <h2 class="title">{{ $relatedRoom->type->typeName }} {{  $relatedRoom->name }}</h2>
                            <p class="description">
                            <?= $room->description ?>
                            </p>
                            <div class="booking-container">
                            <p class="price">${{ $relatedRoom->rate }}/Night</p>
                            <p class="booking">Book now</p>
                            </div>
                        </article>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="swiper-button-prev" id="swiper-button-prev--rooms"></div>
            <div class="swiper-button-next" id="swiper-button-next--rooms"></div>
        </div>
    </section>
@endsection
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>