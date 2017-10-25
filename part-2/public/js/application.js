$(document).ready(function(){
  $("#new-poem-form").on("submit", newPoemFormHandler);
  $("main").on("submit", "#applaud-form", addApplaudHandler);
});

var addApplaudHandler = function(event) {
  event.preventDefault();
  $form = $(this);

  var url = $form.attr("action");
  var method = $form.find("input[type=hidden]").attr("value");

  var request = $.ajax({
    url: url,
    method: method
  });

  request.done(function(response){
    if (response === "1") {
      $form.closest('article').find(".applaud-count").text("1 reader has applauded this poem.");
    } else {
      $form.closest('article').find(".applaud-count").text(response + " readers have applauded this poem.");
    }
  });
};

var newPoemFormHandler = function(event) {
  event.preventDefault();
  $form = $(this);

  var url = $form.attr("action");
  var method = $form.attr("method");
  var data = $form.serialize();

  var request = $.ajax({
    url: url,
    method: method,
    data: data
  });

  request.done(function(response){
    $("#poem-list").prepend(response);
    $form.trigger("reset");
  });

  request.fail(function(error){
    $(".form-error").empty();
    $(".form-error").prepend(error.responseText);
  });

};
