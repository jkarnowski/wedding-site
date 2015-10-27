// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// REFACTOR

// $(document).ready(function(){
// 	console.log("inside the registry js")

// 	getRegistryItems();
// })

// var getRegistryItems = function(){

// 	$.ajax({
// 		method: 'GET',
// 		url: 'http://localhost:3000/registry/index'
// 	})
// 	.success(function(response){
// 		console.log(response);
// 		title = response.data[0].title
// 		$('.registry-title-test').append(title)
// 		})
// 	.error(function(response){
// 		console.log("FAILING");
// 	});
// }