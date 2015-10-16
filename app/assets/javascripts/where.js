// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).on('ready', function(){
	console.log("inside the where")
	showMap();
})

var showMap = function(){
	var map;

	var myLatLng = {
		lat: 26.137409, 
		lng: -80.109059
	};
	var map = new google.maps.Map(document.getElementById('googleMap'), {
	    center: myLatLng,
	    zoom: 14
	  });
	var marker = new google.maps.Marker({
		position: myLatLng,
    map: map,
    title: 'Wedding Spot'
  	});
}