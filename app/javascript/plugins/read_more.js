const readMore = () => {
  const button = document.querySelector('.js-read-more');
  const excerpt = document.querySelector('.js-excerpt');

  if (button) {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      if (event.classList.contains("excerpt-hidden")) {
        event.currentTarget.classList.add("excerpt-visible");
        event.currentTarget.classList.remove("excerpt-hidden");
        button.text = "Read Less";
      } else {
        event.currentTarget.classList.add("excerpt-hidden");
        event.currentTarget.classList.remove("excerpt-visible");
        button.text = "Read More";
      }
    });
  }
}

export { readMore };
