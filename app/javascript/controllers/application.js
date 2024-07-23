import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
// app/javascript/packs/application.js
import "jquery";
import "jquery-ui/ui/widgets/autocomplete";

$(function() {
  $("#search-input").autocomplete({
    source: "/animes/autocomplete",
    minLength: 2
  });
});
