$(document).ready(function(){
	var currPath = window.location.href;
	var currLang = currPath.slice(-2);
	var hasLangParam = currPath.indexOf("lang") != -1;
	var pageInSpanish = currLang === 'es';
	var language = ((hasLangParam && pageInSpanish) ? "English?" : "Espanol?");
	var currLanguage = 
	           ((language.slice(0, 2).toLowerCase() === 'en') ?
							'es' : 'en');
	setActiveSelection();
	fillInOptionsText(currLanguage);
	fillInEventsDropdown(currLanguage);
});

function fillInEventsDropdown(lang){
}

function fillInOptionsText(lang){
	var tabText;
	var links = [$('#about-us'), $('#contact-us'), $('#events'), 
	             $('#volunteer'), $('#gallery'), $('#meet-the-team'),
	             $('#donate')];
	switch(lang){
		case "en":
			tabText = ["About", "Contact", "Events", "Volunteer", 
			           "Gallery", "Meet the Team", "Donate"];
			break;
		case "es":
			tabText = ["Misión", "Contacto", "Eventos", "Voluntario", 
			           "Galería", "Conocer al Equipo", "Donar"];
			break;
	}
	for(x = 0; x < tabText.length; x++){
		links[x].text(tabText[x]);
		links[x].attr('href', links[x].attr('id') + "?lang=" + lang);
		if (tabText[x] === "Events" || tabText[x] === "Eventos"){
			links[x].append("<span class=\"caret\"></span>")
		}
	}	
}

function setActiveSelection(){
	var activeTabIndex = findActiveSelection();
	var activeTab = $($('.nav-option')[activeTabIndex]);
	activeTab.addClass("active");
	activeTab.append("<span class=\"sr-only\">(current)</span>");
}

function findActiveSelection(){
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
