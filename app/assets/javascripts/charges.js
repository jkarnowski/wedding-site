// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

		// get the key that identifies me as the Stripe customer

		// grab the amount from the form and set that to the Stripe amount

		// set the token to send to Stripe server
		// 	stripeToken
		// 	stripeEmail
		// 	amount

		// open Checkout
		// 		set params to send to Stripe server

		// close Checkout
		
	var handler = StripeCheckout.configure({

		};

		// Open Checkout with further options
    handler.open({
      name: 'Honeymoon Fund',
      description: 'help fund happiness',
      amount: amount,
    });
    // event.preventDefault();
	});

	// // Close Checkout on page navigation
	$(window).on('popstate', function () {
	  handler.close();
	});
})