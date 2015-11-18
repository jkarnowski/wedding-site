// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

	// var handler = StripeCheckout.configure({
	// 	key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
	//   token: function (token) {

	//   	var request = $.post('/charges', {
	//   		stripeToken: token.id,
	// 			stripeEmail: token.email,
	// 			amount: amount,
	//   	});
	//   	request.done(function(){
	//   		alert('Thanks for the cash sucker!');
	//   	});
	//   	request.fail(function(){
	//   		alert('something went wrong, its jacklyns fault')
	//   	});
	//   }
	// });

	var handler = StripeCheckout.configure({
		Stripe.setPublishableKey('pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ');

		// key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
		token: function(token) {
			$('#stripeToken').val(token.id);
			$('#stripeEmail').val(token.email);
			$('#stripe-form').submit();	
		}
	});


	$('.stripe-form').on('submit', function (event) {
		var $form = $(this);

		// disable submit button to prevent multiple clicks
		$form.find('.contribute-btn ').prop('disabled', true);

		Stripe.card.createToken($form, stripeResponseHandler);

		return false;

		event.preventDefault();

		if (response.error) {
			$form.find('.payment-errors').text(response.error.message);
			$form.find('.customButton').prop('disabled', false);
		}
		else {
			var token = response.id;
			$form.append($('<input type="hidden" name="stripeToken" />').val(token));
			$form.get(0).submit();
		}
		
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


