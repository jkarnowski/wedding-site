// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  var handler = StripeCheckout.configure({
    key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
    // key: '#{Rails.configuration.stripe[:publishable_key]}'
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

  	// var indexOfInput = $(this).data("index");
  	// console.log("index Of Input:");
  	// console.log(indexOfInput);

    // allows for grabbing the FIRST form
  	var centsToDollars = $('.input-index').val();
    // console.log("cents to dollars")
    // console.log(centsToDollars);

    var amount = (centsToDollars * 100);
    // console.log(amount);

    // Open Checkout with further options
    handler.open({
      name: 'Honeymoon Fund',
      description: 'Jaclyn + Pablo',
      amount: amount
    });
    event.preventDefault();
  });

  // Close Checkout on page navigation
  $(window).on('popstate', function() {
    handler.close();
  });
});

