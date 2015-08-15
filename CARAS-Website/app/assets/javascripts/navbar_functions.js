$(document).ready(function(){
	var title = $('title').text();
	title = title.replace("CARAS | ", "").toLowerCase();
	var activeTabIndex;

	switch(title){
		case "acerca de nosotros":
		case "about us":
			activeTabIndex = 0;
			break;
		case "aser contacto con nosotros":
		case "contact us":
			activeTabIndex = 1;
			break;
		case "voluntario":
		case "volunteer":
			activeTabIndex = 3;
			break;
		case "galería":
		case "gallery":
			activeTabIndex = 4;
			break;
		case "conocer al equipo":
		case "meet the team":
			activeTabIndex = 5;
			break;
		case "donar":
		case "donate":
			activeTabIndex = 6;
			break;
		default:
			activeTabIndex = 2;
			break;
	}
	var activeTab = $($('.nav-option')[activeTabIndex]);
	activeTab.addClass("active");
	activeTab.append("<span class=\"sr-only\">(current)</span>");
});
