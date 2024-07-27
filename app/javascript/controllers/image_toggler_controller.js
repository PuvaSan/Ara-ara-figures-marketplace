import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-toggler"
export default class extends Controller {
  connect() {
  }
  changeBigImage(){
    document.querySelector('.big-figure-img').style.backgroundImage = this.element.style.backgroundImage;
  }
}
