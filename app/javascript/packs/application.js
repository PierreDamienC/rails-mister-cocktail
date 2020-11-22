// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap';
import { initSelect2 } from '../components/init_select2';
import AOS from 'aos'
import 'aos/dist/aos.css'
import { cardFlip } from '../plugins/card_flip';
import { addIngredient } from '../plugins/add_ingredient';
import { addReview } from '../plugins/add_review'
import { dynamicRating } from '../plugins/fill_stars'
import { searchCocktails } from '../plugins/search_cocktails'

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

document.addEventListener("turbolinks:load", function() {
  initSelect2();
  AOS.init();
  cardFlip();
  // if (document.getElementById('cocktails-search') !== null ) {
  //   searchCocktails();
  // };
  if (document.getElementById("button-purple-add") !== null) {
    addIngredient();
  };
  if (document.getElementById("button-purple-add-review") !== null) {
    addReview();
  };
  dynamicRating();
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
