$(document).ready(function () {

  document.getElementById('submit').focus()

  $("form").on("submit", function(event) {

    event.preventDefault();

    $.post("/rolls", {}, function(data) {
      $("#die").html(data);
    });
  });
});
