$(document).on('ready', function(){
	console.log('inside the registry')

	// reduceTotalCost();

})

var reduceTotalCost = function(event){
	console.log('inside reduceTotalCost')
	event.preventDefault();

	$.ajax({
		method: 'GET',
		url: 'http://localhost:3000/registry/index'
	})
	.success(function(sResponse){
		total_cost.forEach(function(dataPoint){
		})
	});
}

// total cost of an item from model 
// amount from charges 
// reduce the total amount requested by amount charged
// ie 
// $4000.00 for flights
// $100.00 from Amanda
// 4000 - 100 = $3900.00

// how do I store the amount from charges and use it over here?
