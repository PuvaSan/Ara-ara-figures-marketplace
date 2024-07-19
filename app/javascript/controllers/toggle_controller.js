import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["orderButton", "productButton"]

  connect() {
    console.log("Hello, Stimulus!", this.element);
    this.productButtonTarget.classList.add("d-none");
  }

  product() {
    console.log("product!", this.element);
    this.orderButtonTarget.classList.add("d-none");
    this.productButtonTarget.classList.remove("d-none");
  }

  order() {
    console.log("order!", this.element);
    this.productButtonTarget.classList.add("d-none");
    this.orderButtonTarget.classList.remove("d-none");
  }
}
