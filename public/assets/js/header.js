let lastScrollTop = 0;
const element = document.querySelector('.header-container'); 

window.addEventListener('scroll', () => {
    let currentScroll = window.pageYOffset || document.documentElement.scrollTop;
    if (currentScroll > lastScrollTop) {
        element.style.transition = 'transform 0.3s ease';
        element.style.transform = 'translateY(-100%)'; 
    } else {
        element.style.transform = 'translateY(0)'; // Show element
    }
    lastScrollTop = currentScroll <= 0 ? 0 : currentScroll; // For Mobile or negative scrolling
});