// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

	console.log("READY!");

  var handler = StripeCheckout.configure({
    key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
    locale: 'auto',
    token: function(token) {
      // Use the token to create the charge with a server-side script.
      // You can access the token ID with `token.id`
      $('#stripeToken').val(token.id);
			$('#stripeEmail').val(token.email);
			$('#stripe-form').submit();
    }
  });

  $('.stripeButton').on('click', function(event) {

  	var centsFromStripeForm= ".amount_" + event.toElement.dataset.index;
  	console.log(centsFromStripeForm);

  	var amount = $(centsFromStripeForm).val() * 100;
  	console.log(amount);
    // Open Checkout with further options
    handler.open({
      name: 'Jaclyn Karnowski & Pablo Perez',
      description: 'Honeymoon Fund',
      amount: amount
    });
    event.preventDefault();
  });

  // Close Checkout on page navigation
  $(window).on('popstate', function() {
    handler.close();
  });

	// var handler = StripeCheckout.configure({
	// 	key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
	// 	token: function(token) {
	// 		$('#stripeToken').val(token.id);
	// 		$('#stripeEmail').val(token.email);
	// 		$('#stripe-form').submit();
	// 	}
	// });

	// $('.stripeButton').on('click', function(event){
	// 	console.log("inside EVENT ON CLICK!")

	// 	var centsFromStripeForm= "#amount" + event.toElement.dataset.index;

	// 	console.log(centsFromStripeForm);

	// 	var amount = $(centsFromStripeForm).val() * 100;
	// 	console.log(amount);
	// 	// var displayAmount = parseFloat(Math.floor($(idOfTheFormElements).val() * 100) / 100).toFixed(2);
	// });

	// 	// Open Checkout with further options
 //    handler.open({
 //      name: 'Jaclyn Karnowski & Pablo Perez Honeymoon Fund',
 //      description: 'help fund happiness',
 //      amount: amount,
 //    });
 //    event.preventDefault();
	// });

	// // // Close Checkout on page navigation
	// $(window).on('popstate', function () {
	//   handler.close();
	// });
});


