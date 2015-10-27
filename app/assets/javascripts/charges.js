// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).on('ready', function(){
	console.log('inside the charges')

	var handler = StripeCheckout.configure({
		key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
		locale: 'auto',
		token: function(token) {
		// Use the token to create the charge with a server-side script.
	  // You can access the token ID with `token.id`
		}
	});

// contributes ANY amount
	$('.customButton').on('click', function(e) {
		// e.preventDefault();
		// console.log("preventing default")
		// Open Checkout with further options
		var amount = $("custom-gift-amount").val() * 100;
		handler.open({
	  name: 'Jaclyn and Pablo',
	  description: 'fund some happiness',
	  amount: amount
	});
		e.preventDefault();
	});

	// Close Checkout on page navigation
	$(window).on('popstate', function() {
		handler.close();
	});

})
