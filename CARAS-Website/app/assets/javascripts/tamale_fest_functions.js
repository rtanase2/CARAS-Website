$(document).ready(function(){
  var ev = $('#invisible').data('event');
  var language = $('#invisible').data('lang');

  var tabOption = "description";
  if (language === "es")
    tabOption = "descripción";

  addTabText(ev, tabOption);
  updateTabContainer(tabOption, ev);

  $(".nav-tabs").click(function(e){
    $('#' + tabOption).parent().removeClass("active");
    $('#' + e.toElement.id).parent().addClass("active");
    tabOption = e.toElement.id;
    updateTabContainer(tabOption, ev);
  });

  $(window).resize(function(){
    console.log("resize");
    if(tabOption == "sponsors" || tabOption == "esponsor"){
      console.log("in if");
      $('#tab-container').empty();
      createSponsorsTable(ev);
    }
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
      case "descripción":
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
      case "esponsor":
      case "sponsors":
        createSponsorsTable(e);
        break;
      case "registration":
        tabContainer.append("<p>registration</p>");
        break;
      case "entertainment":
        tabContainer.append("<p>entertainment</p>");
        break;


      case "registro":
        break;
      case "entretenimiento":
        break;
    };
  }
});

function createSponsorsTable(e){
  var sponsors = $('#invisible').data('sponsors');
        var currRow = 0;
        tabContainer = $('#tab-container')
        tabContainer.append("<table><tbody id=\"logo-table\"><tr id=\"" + 
          "tr" + currRow + "\">");
        var numLogos = 0;
        table = $('#logo-table');
        row = $('#tr' + currRow);
        for (s in e.sponsors){
          if ($('body').width() < (numLogos+1)*200){
            currRow++;
            table.append("</tr><tr id=\"" + 
          "tr" + currRow + "\">");
            numLogos = 0;
            row = $('#tr' + currRow);
          }
          row.append("<td><h3>   <img width=\"150px\" src=\"" + sponsors[parseInt(e.sponsors[s])].logo_url + 
            "\" alt=\"" + sponsors[parseInt(e.sponsors[s])].name + "\"></img></h3></td>");
          numLogos++;
        }
        tabContainer.append("</tr></tbody></table>");
}