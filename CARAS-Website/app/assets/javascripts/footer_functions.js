$(document).ready(function(){
	// Change language button to have the correct language text (English? or Spanish?)
	var languageButton = $('#language-button');
	var currPath = window.location.pathname;
	var currLang = currPath.slice(-2);
	var language = ((currLang === 'es') ? "English?" : "Espanol?");
	languageButton.text(language);

	// Add the correct href to the language button
	var link = currPath.slice(0, ((currPath.length - 2))) + ((currLang === 'en') ? "es" : "en");
	languageButton.attr("href", link);
});