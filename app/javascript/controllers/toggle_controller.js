import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["orderButton", "productButton", "reviewButton"]

  // this hides product and order list when page loads
  connect() {
    console.log("Hello, Stimulus!", this.element);
    this.productButtonTarget.classList.add("d-none");
    this.reviewButtonTarget.classList.add("d-none");
  }

  // this hides the order button and shows the product button when the product button is clicked
  product() {
    this.orderButtonTarget.classList.add("d-none");
    this.productButtonTarget.classList.remove("d-none");
  }

  // this hides the product button and shows the order button when the order button is clicked
  order() {
    this.productButtonTarget.classList.add("d-none");
    this.orderButtonTarget.classList.remove("d-none");
  }

  // this hides the buttons when the review button is clicked
  review() {
    this.productButtonTarget.classList.add("d-none");
    this.orderButtonTarget.classList.add("d-none");
    this.reviewButtonTarget.classList.remove("d-none");
  }
}
