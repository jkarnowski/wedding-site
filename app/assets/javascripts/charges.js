// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

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

  	var indexOfInput = $(this).data("index");
  	console.log("index Of Input:");
  	console.log(indexOfInput);

  	var cents = $('.input-index').val();
    var centsTest = $('input[name="amount_' + indexOfInput + ']')
    console.log(centsTest);
    var centsTest2 = $('input[name="amount_' + indexOfInput + ']').val();
    console.log(centsTest2);  
    var centsToDollars = parseFloat(Math.floor(cents * 100)).toFixed(2);
    // ONLY WORKS RIGHT NOW FOR FIRST INPUT FIELD
  	console.log("cents to dollars")
  	console.log(centsToDollars);

    // Open Checkout with further options
    handler.open({
      name: 'Jaclyn Karnowski & Pablo Perez',
      description: 'Honeymoon Fund',
      amount: centsToDollars
    });
    event.preventDefault();
  });

  // Close Checkout on page navigation
  $(window).on('popstate', function() {
    handler.close();
  });
});

