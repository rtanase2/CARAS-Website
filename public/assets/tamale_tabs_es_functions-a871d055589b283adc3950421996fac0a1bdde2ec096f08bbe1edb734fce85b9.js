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
        tabContainer.append("<p>sponsors</p>");
        break;
      case "registration":
        tabContainer.append("<p>registration</p>");
        break;
      case "entertainment":
        tabContainer.append("<p>entertainment</p>");
        break;
    }
}
});
