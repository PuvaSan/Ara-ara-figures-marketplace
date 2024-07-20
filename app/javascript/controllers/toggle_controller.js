import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["orderButton", "productButton", "reviewButton",
                    "orderList", "productList", "reviewList"
  ]

  // this hides product and order list when page loads
  connect() {
    console.log("Hello, Stimulus!", this.element);
    this.productButtonTarget.classList.add("d-none");
    this.reviewButtonTarget.classList.add("d-none");

    this.orderListTarget.classList.add("active");
  }

  // hides other list except product list when product button is clicked
  product() {
    this.orderButtonTarget.classList.add("d-none");
    this.productButtonTarget.classList.remove("d-none");
    this.reviewButtonTarget.classList.add("d-none");

    this.productListTarget.classList.add("active");
    this.orderListTarget.classList.remove("active");
    this.reviewListTarget.classList.remove("active");
  }



  // hides other list except order list when order button is clicked
  order() {
    this.orderButtonTarget.classList.remove("d-none");
    this.productButtonTarget.classList.add("d-none");
    this.reviewButtonTarget.classList.add("d-none");

    this.orderListTarget.classList.add("active");
    this.productListTarget.classList.remove("active");
    this.reviewListTarget.classList.remove("active");
  }

  // this hides other list except review list when the review button is clicked
  review() {
    this.orderButtonTarget.classList.add("d-none");
    this.productButtonTarget.classList.add("d-none");
    this.reviewButtonTarget.classList.remove("d-none");

    this.reviewListTarget.classList.add("active");
    this.productListTarget.classList.remove("active");
    this.orderListTarget.classList.remove("active");
  }
}
