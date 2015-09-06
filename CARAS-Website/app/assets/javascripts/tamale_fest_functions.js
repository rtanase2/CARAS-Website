$(document).ready(function(){
  var events = $('#invisible').data('events')
  var language = $('#invisible').data('lang')
  var tabOption = "description";

  if (language === "es")
    tabOption = "descripción";

  var e;
  if (events[0].language == language){
    e = events[0];
  } else {
    e = events[1];
  }
  addTabText(e, tabOption);
  updateTabContainer(tabOption, e);

  $(".nav-tabs").click(function(e){
    $('#' + tabOption).parent().removeClass("active");
    $('#' + e.toElement.id).parent().addClass("active");
    tabOption = e.toElement.id;

    updateTabContainer(tabOption);
  });

  function addTabText(e, selected){
    tabDiv = $('.nav-tabs');
    tabDiv.empty();
    for ( t in e.tabs){
      tabDiv.append("<li role=\"presentation\"><a id=\"" + e.tabs[t].split(" ")[0].toLowerCase() + "\" >" + e.tabs[t] + "</a></li>");
    }
    $('#' + selected).parent().attr('class', 'active');
  }

  function updateTabContainer(option, e){
    console.log(option);
    var tabContainer = $('#tab-container');
    tabContainer.empty();
  switch(tabOption){
    // Handle english cases
      case "description":
        tabContainer.append("<h3><b>Date:</b> " +  + "</h3><h3><b>Time:</b> " + + "</h3>");
        tabContainer.append("<h3><b>Location:</b> " + + "</h3>");
        break;
      case "sponsors":
        tabContainer.append("<p>sponsors</p>");
        break;
      case "registration":
        tabContainer.append("<p>registration</p>");
        break;
      case "entertainment":
        tabContainer.append("<p>entertainment</p>");
        break;

    // Handle spanish cases
      case "descripción":
        break;
      case "esponsor":
        break;
      case "registro":
        break;
      case "entretenimiento":
        break;
    };
  }
});