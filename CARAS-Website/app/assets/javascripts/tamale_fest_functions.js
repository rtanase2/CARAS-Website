$(document).ready(function(){
  var events = $('#invisible').data('events')
  var language = $('#invisible').data('lang')
  var tabOption = "description";

  if (language === "es")
    tabOption = "descripción";

  var ev;
  if (events[0].language == language){
    ev = events[0];
  } else {
    ev = events[1];
  }
  console.log(ev);
  addTabText(ev, tabOption);
  updateTabContainer(tabOption, ev);

  $(".nav-tabs").click(function(e){
    $('#' + tabOption).parent().removeClass("active");
    $('#' + e.toElement.id).parent().addClass("active");
    tabOption = e.toElement.id;

    updateTabContainer(tabOption, ev);
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
    var tabContainer = $('#tab-container');
    tabContainer.empty();
  switch(tabOption){
    // Handle english cases
      case "description":
        tabContainer.append("<h3><b>Date:</b> " + e.date + "</h3><h3><b>Time:</b> " + e.start_time +  " - " + e.end_time + "</h3>");
        tabContainer.append("<h3><b>Location:</b> " + + "</h3>");
        break;
      case "sponsors":
        for (s in e.sponsors){
          tabContainer.append("<p>" + s + "</p>");
        }
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