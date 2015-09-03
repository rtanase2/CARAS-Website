$(document).ready(function(){
  var tabOption = "description";
  updateTabContainer(tabOption);

  $(".nav-tabs").click(function(e){
    $('#' + tabOption).parent().removeClass("active");
    $('#' + e.toElement.id).parent().addClass("active");
    tabOption = e.toElement.id;

    updateTabContainer(tabOption);
  });

  function updateTabContainer(option){
  	var tabContainer = $('#tab-container');
    tabContainer.empty();
	switch(tabOption){
      case "description":
        tabContainer.append("<h3><b>Date:</b> Sunday, September 27, 2015</h3><h3><b>Time:</b> 12:00 - 7:00 PM</h3>");
        tabContainer.append("<h3><b>Location:</b> Monterey Road between 3rd Street and 6th Street</h3>");
        break;
      case "sponsors":
        tabContainer.append("<h1 style=\"text-align: center\">Sponsors</h1>");
        tabContainer.append("<table><tr>");
        tabContainer.append("<td><p><img width = \"150px\" src=\"caras-logo-transparent.png\"></img></p></td>");
        tabContainer.append("<td><p><img width = \"150px\" src= \"El Charrito logo.png\"></img></p></td> ");
        tabContainer.append("</tr></table>");
        break;
      case "registration":
        tabContainer.append("<h1>Registration</h1>");
        tabContainer.append("<p>Please download and fill out the forms below and email them to rarmendariz@carassouthcounty.org, or bring them in to the office located at 7365 Monterey Rd Gilroy, CA 95020.</p>")

        tabContainer.append("<h2>Vendors</h2>");
        tabContainer.append(" <a href=\"PDFs/TFF_Booth_Construction.pdf\" target=\"_blank\">Booth Construction Form</a>");
        tabContainer.append(" <a href=\"PDFs/TFF_Application.pdf\" target=\"_blank\">Temporary Food Facility Application</a>");
        tabContainer.append(" <a href=\"PDFs/TE_Self_Checklist.pdf\" target=\"_blank\">Booth Checklist</a>");
        tabContainer.append(" <a href=\"PDFs/Spanish_Booth_Application_ Tamale_Festival_ 2015.pdf\" target=\"_blank\">CARAS Vendor Application</a>");
        
        tabContainer.append("<h2>Volunteers</h2>");
        tabContainer.append(" <a href=\"PDFs/CARASLiabilityReleaseForm.pdf\" target=\"_blank\">Booth Checklist</a>");
        tabContainer.append(" <a href=\"PDFs/CARASVolunteerIntake.pdf\" target=\"_blank\">CARAS Vendor Application</a>");

        tabContainer.append("<h2>Car Show</h2>");
        tabContainer.append(" <a href=\"PDFs/2nd Anniual Tamale Carshow Registration Final (3) 2.pdf\" target=\"_blank\">Car Show Registration Form</a>");


        tabContainer.append("<h2>Tamale Cook Off</h2>");
        tabContainer.append(" <a href=\"PDFs/TAMALE FESTIVAL CONTEST Spanish.pdf\" target=\"_blank\">Tamale Cook Off Registration Form</a>");
        
        break;
      case "entertainment":
        tabContainer.append("<p>entertainment</p>");
        break;
    }
}
});