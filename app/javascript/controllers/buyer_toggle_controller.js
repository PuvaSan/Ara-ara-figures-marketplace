import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="buyer-toggle"
export default class extends Controller {
  connect() {
  }

  toggle() {
    const activeElement = document.querySelector(".active");
    if (activeElement) {
      activeElement.classList.remove("active");
    };
    const containers = document.querySelectorAll(".dashboard-content > *");
    containers.forEach(container => {
      if (!container.classList.contains("d-none")) {
        container.classList.add("d-none");
      }
    });

    this.element.classList.toggle("active");
    document.querySelector(`.${this.element.id}-container`).classList.toggle("d-none");
  }
}
