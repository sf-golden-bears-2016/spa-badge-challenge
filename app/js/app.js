$(document).ready(function() {
  bringHomePage();
});
//
baseURL = "http://localhost:3000"

function bringHomePage(){
  $.ajax({
    url: baseURL + "/teachers",
    method: 'GET',
    dataType: "json"
  })
  // .done(function(response){
  //   console.log("***********");
  //   console.log(response)
  //   $.each(response, function(index, teacher){
  //     console.log("teacher in each meth")
  //     console.log(teacher);
  //     $("#teachers-list").append(
  //       "<li><a href='#'>" + teacher.name + "</a></li>"
  //     )
  //   })
  // })

  .done(function(response){
    console.log(response);
    // var teachers = JSON.stringify(response);
    var theTemplateScript = $('#teacher-template').html();
    var theTemplate = Handlebars.compile(theTemplateScript);
    var context = {peeps: response
  };
    var theCompiledHtml = theTemplate(context)
    console.log(context);
    // $(document.body).append(theCompiledHtml);
    console.log(theCompiledHtml);
    $('#teachers-list').html(theCompiledHtml);
  })
}
