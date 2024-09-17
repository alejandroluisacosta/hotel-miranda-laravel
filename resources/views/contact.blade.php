@extends('layouts.app')
@section('title', 'Contact')
@section('content')
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
            <img src="/assets/images/Hotel-Address.svg"/>
            <div class="text-container">
                <p class="title">
                    Hotel Address
                </p>
                <p class="information">19/A, Cirikon City Hall Tower<br>New York, NYC</p>
            </div>
        </div>
        <div class="info__container">
            <p class="number number--2">02</p>
            <img src="/assets/images/Phone-Number.svg"/>
            <div class="text-container">
                <p class="title">
                    Phone Number
                </p>
                <p class="information">+ 97656 875 7864 7<br>+ 876 766 8675 766 6</p>
            </div>
        </div>
        <div class="info__container">
            <p class="number number--3">03</p>
            <img src="/assets/images/Hotel-Email.svg"/>
            <div class="text-container">
                <p class="title">
                    Email
                </p>
                <p class="information">info@webmail.com<br>jobs.webmail@mail.com</p>
            </div>
        </div>
    </section>
    <div class="single-image-container single-image-container--contact contact-image-container" style="background-image: url('/assets/images/Hotel-At-Lake.jpeg');"></div>
    </div>
    <form class="contact-form" method="POST" action="{{ route('contact.store') }}">
        @csrf
        <div class="row-of-two">
            <div class="input-container">
                <img class="icon" src="/assets/images/Contact-User.svg"/>
                <input type="text" name="name" placeholder="Your full name"/>
            </div>
            <div class="input-container">
                <img class="icon" src="/assets/images/Contact-Phone.svg"/>
                <input type="text" name="phone" placeholder="Add your phone number"/>
            </div>
        </div>
        <div class="row-of-two">
            <div class="input-container">
                <img class="icon" src="/assets/images/Contact-Email.svg"/>
                <input type="text" name="email" placeholder="Enter email address"/>
            </div>
            <div class="input-container">
                <img class="icon" src="/assets/images/Contact-Subject.svg"/>
                <input type="text" name="subject" placeholder="Enter subject"/>
            </div>
        </div>
        <div class="input-container input-container--text-area">
            <img class="icon" src="/assets/images/Contact-Pencil.svg"/>
            <textarea type="text-area" name="text" placeholder="Enter message"></textarea>
        </div>
        <button type="submit">SEND</button>
    </form>
@endsection