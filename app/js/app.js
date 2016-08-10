// $(function () {
//   // // Grab the template script
//   // var theTemplateScript = $("#address-template").html();

//   // // Compile the template
//   // var theTemplate = Handlebars.compile(theTemplateScript);

//   // // Define our data object
//   // var context={
//   //   "city": "London",
//   //   "street": "Baker Street",
//   //   "number": "221B"
//   // };

//   // // Pass our data to the template
//   // var theCompiledHtml = theTemplate(context);

//   // // Add the compiled html to the page
//   // $('.content-placeholder').html(theCompiledHtml);
// });
$(function(){
  $('#walker').on("click", function(event) {
    event.preventDefault();
  // console.log("harr0")
  $.ajax({
    url: 'http://localhost:3000',
    type: 'get'
  })
  .done(function(response){
    console.log(response)
    })
  })
})