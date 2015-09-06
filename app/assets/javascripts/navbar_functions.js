$(document).ready(function(){
	var currPath = window.location.href;
	console.log(currPath);
	var currLang = currPath.slice(-2);
	var hasLangParam = currPath.indexOf("lang") != -1;
	var pageInSpanish = currLang === 'es';
	var language = ((hasLangParam && pageInSpanish) ? "English?" : "Espanol?");
	var currLanguage = 
	           ((language.slice(0, 2).toLowerCase() === 'en') ?
							'es' : 'en');
	fillInOptionsText(currLanguage);
	setActiveSelection(currPath);
});

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
		links[x].attr('href', "/" + links[x].attr('id') + "?lang=" + lang);
		if (tabText[x] === "Events" || tabText[x] === "Eventos"){
			links[x].append("<span class=\"caret\"></span>")
		}
	}	
}

function setActiveSelection(currPath){
	var activeTabIndex = findActiveSelection(currPath);
	var activeTab = $($('.nav-option')[activeTabIndex]);
	activeTab.addClass("active");
	activeTab.append("<span class=\"sr-only\">(current)</span>");
}

function findActiveSelection(currPath){
	// UNCOMMENT WHEN ALL OPTIONS ARE AVAILABLE options = ["about-us", "contact-us", "volunteer", "gallery", "meet-the-team", "donate"];
	options = ["about-us", "contact-us", "volunteer", "donate"];
	options = options.map(function(e) { return currPath.indexOf(e)});
	i = options.indexOf(options.filter(function(e) {return e > -1})[0]);
	if (i == -1){
		return 2;
	} else if (i >= 2) {
		return i + 1;
	} else {
		return i;
	}
}
