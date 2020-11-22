const addIngredient = () => {
  document.querySelector(".button-purple-add").addEventListener("click", (event) => {
    event.preventDefault();
    if (document.querySelector(".card-new-dose").style.display === "") {
      document.querySelector(".card-new-dose").style.display = 'inline-block';
    } else {
      document.querySelector(".card-new-dose").style.display = '';
    }
  })
};

export { addIngredient };