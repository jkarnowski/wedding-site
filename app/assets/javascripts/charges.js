// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	console.log("inside the charges")

	// buttonListener();

})

var buttonListener = function(){
	var contribute = $('#contributeButton').on('click', function(event){
		console.log(this)

}


// buttonListener
// on click of 'contribute'
// 	user sees a form to fill in payment information
// 			CC + CCV + email + amount to give 
// on submit
// 	hits the charges controller
// 		create a new charge
// 		sends info to stripe


