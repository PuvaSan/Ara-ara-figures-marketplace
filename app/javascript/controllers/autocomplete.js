import $ from "jquery";
import "jquery-ui/ui/widgets/autocomplete";

$(document).on('turbolinks:load', function() {
  $("#search-input").autocomplete({
    source: "/animes/autocomplete",
    minLength: 2,
    select: function(event, ui) {
      $('#search-input').val(ui.item.value);
      $('form').submit();
    }
  });
});
