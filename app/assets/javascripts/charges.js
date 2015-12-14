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
});


