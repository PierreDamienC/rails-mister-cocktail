const addReview = () => {
    document.querySelector(".button-purple-add-review").addEventListener("click", (event) => {
      event.preventDefault();
      if (document.querySelector(".review-form").style.display === "") {
        document.querySelector(".review-form").style.display = 'flex';
      } else {
        document.querySelector(".review-form").style.display = '';
      }
    })
  };
  
  export { addReview };