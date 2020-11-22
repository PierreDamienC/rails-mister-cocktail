const addIngredient = () => {
  document.querySelector(".button-purple-add").addEventListener("click", (event) => {
    event.preventDefault();
    if (document.querySelector(".dose-form").style.display === "") {
      document.querySelector(".dose-form").style.display = 'flex';   
    } else {
      document.querySelector(".dose-form").style.display = '';
    }
  })
};

export { addIngredient };