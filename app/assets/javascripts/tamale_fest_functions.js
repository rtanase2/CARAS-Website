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
  $("#tab-container").empty();
  switch(option){
    // Handle english cases
    case "descripción":
    case "description":
      generateDescriptionContent(e);
      break;
    case "esponsor":
    case "sponsors":
      createSponsorsTable(e);
      break;
    case "registro":
    case "registration":
      generateRegistrationContent(e);
      break;
    case "entertainment":
    case "entretenimiento":
      generateEntertainment(e);
      break;
  };
}

function generateEntertainment(e){
  tabContainer = $('#tab-container');
  tabContainer.append("<h3>" + (e.language == "en" ? "Coming Soon!" : "¡Próximamente!") + "</h3>"); 
}

function generateRegistrationContent(e){
      tabContainer = $('#tab-container');
      tabContainer.append("<h1>" + (e.language == "en" ? "Registration" : "Registro") + "</h1>");
      (e.language == "en" ? 
      tabContainer.append("<p>Please download and fill out the forms below and email them to rarmendariz@carassouthcounty.org, or bring them in to the office located at 7365 Monterey Rd Gilroy, CA 95020.</p>") :
      tabContainer.append("<p>Por favor, descargue y complete el formulario a continuación y enviarlas por correo electrónico a rarmendariz@carassouthcounty.org, o llevarlos a la oficina situada en 7365 Monterey Rd Gilroy, CA 95020 .</p>"));
      //Vendors
      tabContainer.append("<h2>" + (e.language == "en" ? "Vendors" : "Vendedores") + "</h2>");
      tabContainer.append(" <a href=\"/PDFs/TFF_Booth_Construction.pdf\" target=\"_blank\">Booth Construction Form</a>");
      tabContainer.append(" <a href=\"/PDFs/TFF_Application.pdf\" target=\"_blank\">Temporary Food Facility Application</a>");
      tabContainer.append(" <a href=\"/PDFs/TE_Self_Checklist.pdf\" target=\"_blank\">Booth Checklist</a>");

      //Volunteers
      tabContainer.append("<h2>" + (e.language == "en" ? "Volunteers" : "Voluntarios") + "</h2>");
      tabContainer.append(" <a href=\"/PDFs/CARASLiabilityReleaseForm.pdf\" target=\"_blank\">Booth Checklist</a>");
      tabContainer.append(" <a href=\"/PDFs/CARASVolunteerIntake.pdf\" target=\"_blank\">CARAS Vendor Application</a>");

      //Car Show
      tabContainer.append("<h2>" + (e.language == "en" ? "Car Show" : "Exhibición de Carros") + "</h2>");
      tabContainer.append(" <a href=\"/PDFs/2nd Anniual Tamale Carshow Registration Final (3) 2.pdf\" target=\"_blank\">Carshow Registration Form</a>");
      
      //Tamale Cook Off
      tabContainer.append("<h2>" + (e.language == "en" ? "Tamale Cook Off" : "Tamal Concurso") + "</h2>");
      (e.language == "en" ? 
      tabContainer.append(" <a href=\"/PDFs/TAMALE FESTIVAL CONTEST english.pdf\" target=\"_blank\">Tamale Cook Off Registration Form</a>") :
      tabContainer.append(" <a href=\"/PDFs/TAMALE FESTIVAL CONTEST spanish.pdf\" target=\"_blank\">Tamale Cook Off Registration Form</a>"))
      
}

function createSponsorsTable(e){
  var sponsors = $('#invisible').data('sponsors');
  var currRow = 0;
  tabContainer = $('#tab-container');
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
    row.append("<td><h3>   <img width=\"150px\" src=\"/" + sponsors[parseInt(e.sponsors[s])].logo_url + 
      "\" alt=\"" + sponsors[parseInt(e.sponsors[s])].name + "\"></img></h3></td>");
    numLogos++;
  }
  tabContainer.append("</tr></tbody></table>");
}

function generateDescriptionContent(e){
  tabContainer = $('#tab-container');
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
  tabContainer.append("<h3><b>Date:</b> " + formattedDate + 
                      "</h3><h3><b>Time:</b> " + startTime +  " - " + 
                      endTime + "</h3>");
  tabContainer.append("<h3><b>Location:</b> " + e.street_address + ", " + 
                      e.city + ", " + e.state + " " + e.zip_code 
                      + "</h3>");
  tabContainer.append("<p>" + e.description + "</p>")
}