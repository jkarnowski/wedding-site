// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

	var handler = StripeCheckout.configure({
		key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
		token: function(token) {
			$('#stripeToken').val(token.id);
			$('#stripeEmail').val(token.email);
			$('#stripe-form').submit();
		}
	});

	$('.stripeButton').on('click', function(event){
		var centsFromStripeForm= "#amount" + event.toElement.dataset.index;

		console.log(centsFromStripeForm);

		var amount = $(centsFromStripeForm).val() * 100;
		console.log(amount);
		var displayAmount = parseFloat(Math.floor($(idOfTheFormElements).val() * 100) / 100).toFixed(2);
	});
	console.log(displayAmount);

		// Open Checkout with further options
    handler.open({
      name: 'Honeymoon Fund',
      description: 'help fund happiness',
      amount: amount,
    });
    event.preventDefault();
	});

	// // Close Checkout on page navigation
	$(window).on('popstate', function () {
	  handler.close();
	});
})