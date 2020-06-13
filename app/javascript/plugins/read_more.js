function readMore() {
  const button = document.querySelector('.js-read-more');
  const excerpt = document.querySelector('.js-excerpt');

  if (button) {
    button.addEventListener("click", () => {
      if (excerpt.classList.contains("excerpt-hidden")) {
        excerpt.classList.add("excerpt-visible");
        excerpt.classList.remove("excerpt-hidden");
        button.text = "Read Less";
        console.log('expanding');
      } else {
        excerpt.classList.add("excerpt-hidden");
        excerpt.classList.remove("excerpt-visible");
        button.text = "Read More";
        console.log('reducing');
      }
    });
  }
}

export { readMore };
