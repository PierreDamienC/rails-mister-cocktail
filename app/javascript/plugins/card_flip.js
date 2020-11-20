const cardflip = () => {
  document.querySelectorAll(".card").forEach((card) => {
    card.addEventListener('click', () => {
      if (card.classList.contains('not-flipped')) {
      card.classList.remove('not-flipped');
      card.classList.add('flipped');
      } else {
      card.classList.add('not-flipped');
      card.classList.remove('flipped');
      };
    });
  }
  );
}; 

export { cardflip };