// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

  Stripe.setPublishableKey('pk_live_4J2WWgveZENkVDkZxefrTOh0');

  var handler = StripeCheckout.configure({
    key: 'pk_live_4J2WWgveZENkVDkZxefrTOh0',
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

    // allows for grabbing from the FIRST form
  	var centsToDollars = $('.input-index').val();
    var amount = (centsToDollars * 100);

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

