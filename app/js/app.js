$(document).ready(function() {
  getTeachers();
  getTeacherInfo();
});

var getTeachers = function() {
  $.ajax({
    url: "http://localhost:3000/teachers",
    dataType: "json",
    type: "GET"
  }).done(function(response){
    // Grab the template script
    var theTemplateScript = $("#teacher-list-template").html();
    // Compile the template
    var theTemplate = Handlebars.compile(theTemplateScript);

    // Pass our data to the template
    var theCompiledHtml = theTemplate(response);

    // Add the compiled html to the page
    $('#teacher-container').append(theCompiledHtml);
  })
}

var getTeacherInfo = function() {
  $('ul').on("click", 'a', function(event) {
    event.preventDefault();
    var teacher_id = $(this).attr('id');
    var theUrl = "http://localhost:3000/teachers/" + teacher_id;
    $('#page-content').empty();
    $.ajax({
      url: theUrl,
      dataType: "json",
      type: "GET"
    }).done(function(response) {
      var subtitle = "<h1>Words To Be Remembered By</h1>"
      $('#page-content').append(subtitle)
      // console.log(response.teacher.name)

     // Grab the template script
      var theTemplateScript = $("#teacher-badges-template").html();

      // Compile the template
      var theTemplate = Handlebars.compile(theTemplateScript);

      context = {teacher: {name: response}}

      // Pass our data to the template
      var theCompiledHtml = theTemplate(context);

      // Add the compiled html to the page
      $('#page-content').html(theCompiledHtml);
        })
      })
}
