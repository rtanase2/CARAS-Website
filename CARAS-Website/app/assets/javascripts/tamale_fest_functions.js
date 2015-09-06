$(document).ready(function(){
  var events = $('#invisible').data('events')
  var language = $('#invisible').data('lang')
  var sponsors = $('#invisible').data('sponsors')
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
    var tabDiv = $('.nav-tabs');
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
        var dateArr = e.date.split("-");
        var formattedDate = dateArr[1] + "/" + dateArr[2] + "/" + dateArr[0];
        var startTime = e.start_time.slice(11, 16);
        if ("12:00" > startTime){
          startTime += "AM"
        } else if ("12:00" <= startTime && "12:59" >= startTime){
          startTime += "PM"
        } else {
          startTime = startTime.slice(0, 2)%12 + startTime.slice(2) + "PM"
        }
        var endTime = e.end_time.slice(11, 16);
        if ("12:00" > endTime){
          endTime += "AM"
        } else if ("12:00" <= endTime && "12:59" >= endTime){
          endTime += "PM"
        } else {
          endTime = endTime.slice(0, 2)%12 + endTime.slice(2) + "PM"
        }
        tabContainer.append("<h3><b>Date:</b> " + formattedDate + "</h3><h3><b>Time:</b> " + startTime +  " - " + endTime + "</h3>");
        tabContainer.append("<h3><b>Location:</b> " + + "</h3>");
        break;
      case "sponsors":
        for (s in e.sponsors){
          tabContainer.append("<p>" + parseInt(e.sponsors[s].to) + "</p>");
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