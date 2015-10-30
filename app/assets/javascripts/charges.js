// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

	console.log("inside the charges")
	var handler = StripeCheckout.configure({
	    key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
	    token: function (token) {
	        $("#stripeToken").val(token.id);
	        $("#stripeEmail").val(token.email);
	        $("#myForm").submit();
	    }
	});

	$('#customButton').on('click', function (e) {
	    var amount = $("#amount").val() * 100;
	    var displayAmount = parseFloat(Math.floor($("#amount").val() * 100) / 100).toFixed(2);

	    // Open Checkout with further options
	    handler.open({
	        name: 'Honeymoon Fund',
	        description: 'help fund happiness',
	        amount: amount
	    });
	    e.preventDefault();
	});

})

	// Close Checkout on page navigation
$(window).on('popstate', function () {
    handler.close();
});


// buttonListener
// on click of 'contribute'
// 	user sees a form to fill in payment information
// 			CC + CCV + email + amount to give 
// on submit
// 	hits the charges controller
// 		create a new charge
// 		sends info to stripe


