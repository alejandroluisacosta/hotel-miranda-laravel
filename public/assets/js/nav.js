const hamburgerMenu = document.getElementsByClassName("mobile-nav");
const hamburgerIcon = document.getElementsByClassName("hamburger-menu");

hamburgerIcon[0].addEventListener("click", () => {
    if (window.innerWidth < 1000) {
        hamburgerMenu[0].classList.toggle("nav-open");
    }
})