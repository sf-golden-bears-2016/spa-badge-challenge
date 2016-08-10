$(function(){
  showTeacherList();
  showTeacherDetail();
})

var showTeacherList = function() {
  $.ajax({
    url: 'http://localhost:3000',
    type: 'get',
    dataType: 'JSON'
  })
  .done(function(response){
    $.each(response, function(index, teacher){
      $("#teacher-list").append("<div><li id="+teacher.id+"><a href=/teachers/"+teacher.id+">" + teacher.name + "</a></li></div><div id="+teacher.id+"></div")
    })
  })
}

var showTeacherDetail = function(){
  $('#teacher-list').on('click','li a',function(event){
    event.preventDefault();
    var that = $(this);
    var link = $(this).attr('href');
    var $divID = "#"+"teachers"+link.split("/")[2];
    $.ajax({
      url: 'http://localhost:3000/'+link,
      type: 'get',
      dataType: 'JSON'
    })
    .done(function(response){
      console.log()
      $(that).append(response)
    })
  })
}
