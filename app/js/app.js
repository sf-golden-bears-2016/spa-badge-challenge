$(document).ready(function() {
  bringHomePage();
});

baseURL = "http://localhost:3000"

function bringHomePage(){
  $.ajax({
    url: baseURL + "/teachers",
    method: 'GET',
    dataType: "json"
  })
  .done(function(response){
    console.log(response);
    // var teachers = JSON.stringify(response);
    var theTemplateScript = $('#teacher-template').html();
    var theTemplate = Handlebars.compile(theTemplateScript);
    var teachers = {
      peoples: [
        {name: "marty", id: 5}
      ]
    }
    var theCompiledHtml = theTemplate(teachers)
    console.log(teachers);
    $(document.body).append(theCompiledHtml);
  })
}
