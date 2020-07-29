const slideCarousel = () => {
  const item = document.getElementsByClassName('carousel-item');

  if (item) {
    item.addEventListener('click', () => {
      if (item.classList.contains('active')) {
        setTimeout(2000);
        item.classList.remove('active');
      } else {
        setTimeout(2000);
        item.classList.add('active')
      }
    });
  }
}

export { slideCarousel }
