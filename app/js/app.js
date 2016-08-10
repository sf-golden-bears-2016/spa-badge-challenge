$(document).ready(function() {
    bringHomePage();
    showTeacherPage();
    createVote();
});
//
baseURL = "http://localhost:3000"

function bringHomePage() {
    $.ajax({
            url: baseURL + "/teachers",
            method: 'GET',
            dataType: "json"
        })
        .done(function(response) {
            var theTemplateScript = $('#teacher-template').html();
            var theTemplate = Handlebars.compile(theTemplateScript);
            var context = {
                teachers: response
            };
            var theCompiledHtml = theTemplate(context)
            $('#teachers-list').html(theCompiledHtml);
        })
}

function showTeacherPage(){
  $('#teachers-list').on("click", "a", function(event){
    event.preventDefault();
    data = $(this).children().first().attr("action")
    $.ajax({
      url: data,
      method: "GET",
      dataType: "json"
    })
    .done(function(response) {
      $('#teachers-container').hide();
      $('#teacher-show').show();
        var theTemplateScript = $('#badge-template').html();
        var theTemplate = Handlebars.compile(theTemplateScript);
        var context = {
            teacher: response.teacher,
            badges: response.badges
        };
        var theCompiledHtml = theTemplate(context)
        $('#teacher-show').html(theCompiledHtml);
    })
  })
}

function createVote(){
  $('#teacher-show').on("click", "input", function(event){
    event.preventDefault();
  })
  data = event.currentTarget.value
  $.ajax({
    url: data,
    method: "POST",
    
  })
}
