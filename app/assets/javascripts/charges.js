// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){

	// console.log("inside the charges")
	var handler = StripeCheckout.configure({
	    // key: 'pk_test_UlUbDYdUkO0qkJ2r1Iw3DYtZ',
	    key: ENV['PUBLISHABLE_KEY'],
	    token: function (token) {
	        $("#stripeToken").val(token.id);
	        $("#stripeEmail").val(token.email);
	        $("#myForm").submit();
	    }
	});

	$('.customButton').on('click', function (e) {

			var idOfTheFormElements = "#amount_" + e.toElement.dataset.index;

			console.log(idOfTheFormElements);

	    var amount = $(idOfTheFormElements).val() * 100;
	    console.log(amount);

	    // console.log(amount)
	    var displayAmount = parseFloat(Math.floor($(idOfTheFormElements).val() * 100) / 100).toFixed(2);

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
