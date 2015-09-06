$(document).ready(updateFooter);
$(document).on('page:load', updateFooter);

function updateFooter(){
	// Change language button to have the correct language text (English? or Spanish?)
	var languageButton = $('#language-button');
	var currPath = window.location.href;
	var currLang = currPath.slice(-2);
	var hasLangParam = currPath.indexOf("lang") != -1;
	var pageInSpanish = currLang === 'es';
	var language = ((hasLangParam && pageInSpanish) ? "English?" : "Espanol?");
	languageButton.text(language);

	// Add the correct href to the language button
	var link;
	if(hasLangParam)
		link = (currPath.slice(0, ((currPath.length - 2))) + (pageInSpanish ? "en" : "es"));
	else
		link = currPath + "?lang=" + (pageInSpanish ? "en" : "es"); 
	
	languageButton.attr("href", link);
}
