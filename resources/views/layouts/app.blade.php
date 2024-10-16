<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('title')</title>
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
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css">
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
    @section('header')
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
            <a href="/"><img class="hotel-name" src="/assets/images/HotelName.svg" description="Hotel Name"></a>
            <ul class="desktop-nav">
            <a href="/about"><li class="nav-link">About Us</li></a>
            <a href="/rooms"><li class="nav-link">Rooms</li></a>
            <a href="/offers"><li class="nav-link">Offers</li></a>
            <a href="/contact"><li class="nav-link">Contact</li></a>
            </ul>
            <img class="icon icon--profile" src="/assets/images/User.svg"/>
            <img class="icon icon--search" src="/assets/images/Search.svg"/>
        </header>
        <nav class="mobile-nav">
            <ul>
            <a href="/about"><li class="nav-link">About Us</li></a>
            <a href="/rooms"><li class="nav-link">Rooms</li></a>
            <a href="/offers"><li class="nav-link">Offers</li></a>
            <a href="/contact"><li class="nav-link">Contact</li></a>
            </ul>
        </nav>
    </div>
    @show
    <div class="container">
        @yield('content')
    </div>
    @section('footer')
        <footer class="footer">
            <div class="footer__background">
                <div class="hotel-info">
                <div class="logo-container">
                <div class="logo">H</div>
                <img class="hotel-name" src="/assets/images/HotelName-Footer.svg">
                </div>
                <p class="description">
                Lorem ipsum dolor sit amet, consect etur adipisicing elit, sed doing eius mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitat ion ullamco laboris nisi.
                </p>
                <div class="social">
                <div class="icon-container">
                    <img class="icon" src="/assets/images/Facebook.svg"/>
                </div>
                <div class="icon-container icon-container--twitter">
                    <img class="icon" src="/assets/images/Twitter.svg"/>
                </div>
                <div class="icon-container">
                    <img class="icon" src="/assets/images/Behance.svg"/>
                </div>
                <div class="icon-container">
                    <img class="icon" src="/assets/images/LinkedIn.svg"/>
                </div>
                <div class="icon-container">
                    <img class="icon" src="/assets/images/YouTube.svg"/>
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
                    <img class="icon" src="/assets/images/Phone.svg"/>
                    <div class="text-container">
                    <p class="name">Phone Number</p>
                    <p class="value">+987 876 765 76 577</p>
                    </div>
                </div>
                <div class="contact-container">
                    <img class="icon" src="/assets/images/Email.svg"/>
                    <div class="text-container">
                    <p class="name">Email</p>
                    <p class="value">info@hotelmiranda.com</p>
                    </div>
                </div>
                <div class="contact-container contact-container--last">
                    <img class="icon" src="/assets/images/Location.svg"/>
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
    @show
    <script src="/assets/js/nav.js"></script>
    <script src="/assets/js/header.js"></script>
    <script src="/assets/js/swiper.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    @if (session('status'))
        <script>
            Toastify({
                text: "{{ session('status') }}",
                duration: 3000,
                position: "center",
                stopOnFocus: true,
                style: {
                    background: "linear-gradient(to right, #E9E6E0, #BDAC8D)",
                    color: "#454340",
                }
            }).showToast();
        </script>
    @endif
    @if ($errors->any())
        <script>
            console.log({{ json_encode($errors->all()) }});
            // @foreach ($errors->all() as $error)
            //     Toastify({
            //         text: "{{ $error}}",
            //         duration: 3000,
            //         position: center,
            //         stopOnFocus: true,
            //         style: {
            //             color: "#C3423F",
            //         }
            //     }).showToast();
            // @endforeach
        </script>
    @endif
</body>
</html>
