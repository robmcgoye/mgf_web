$(document).ready( function(){

  let selected_action = $('input[name="library[action]"]:checked').val();

  if (selected_action == "page") {
    selected_library_page();
  } else if (selected_action == "link") {
    selected_library_link();
  } else {
    selected_library_none();
  }
  
  $("#resource-action-link").click(function () {
    selected_library_link();
  });

  $("#resource-action-page").click(function () {
    selected_library_page();
  });

  $("#resource-action-none").click(function () {
    selected_library_none();
  });

  function selected_library_link() {
    $("#link-group").show();
    $("#page-group").hide();   
  }

  function selected_library_page() {
    $("#link-group").hide();
    $("#page-group").show();
  }

  function selected_library_none() {
    $("#link-group").hide();
    $("#page-group").hide();
  }
});