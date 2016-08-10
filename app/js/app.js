$(document).ready(function() {
  $.ajax({
    url: "http://localhost:3000/teachers",
    dataType: "json",
    type: "GET"
  }).done(function(response){
    $.each(response, function(index, teacher) {
      $("#teacher-container").append(
        "<li><a href='#'>" + teacher.name + "</a></li>"
        );
    })
  })
});

