$(document).ready(function(){
	var activeTabIndex = findActiveTab();

	var activeTab = $($('.nav-option')[activeTabIndex]);
	activeTab.addClass("active");
	activeTab.append("<span class=\"sr-only\">(current)</span>");
});

function findActiveTab(){
	var title = $('title').text();
	title = title.replace("CARAS | ", "").toLowerCase();

	switch(title){
		case "misión":
		case "about us":
			return(0);
		case "aser contacto con nosotros":
		case "contact us":
			return(1);
		case "voluntario":
		case "volunteer":
			return(3);
		case "galería":
		case "gallery":
			return(4);
		case "conocer al equipo":
		case "meet the team":
			return(5);
		case "donar":
		case "donate":
			return(6);
		default:
			return(2);
	}
}
