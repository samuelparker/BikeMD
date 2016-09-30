$(document).ready(function() {
  enableHotspots();

});

function enableHotspots(){
  $(".hotspot").click(function(event){
    event.preventDefault();
    var hsAction = $(this).parent().attr("href");
    var request = $.ajax({
      url: hsAction,
    });

    request.done(function(hotspot){
      $(".hotspot-menu").hide();
      $(".hotspot-instructions").hide();
      // $(".search-bar").hide();
      // $("#bike-pic").css("bottom", "55%")
      hsMenu = $(hotspot).find(".hotspot-menu");
      // $("#solutions-menu").remove(hsMenu);
      $("#solutions-menu").append(hsMenu);
    })
  });
}

var map;
var infowindow;

function initMap() {
  var sanFrancico = {lat: 37.773972, lng: -122.431297};
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: sanFrancico
  });

  var bikeLayer = new google.maps.BicyclingLayer();
  bikeLayer.setMap(map);

  infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);
  service.nearbySearch({
    location: sanFrancico,
    radius: 500,
    keyword: ['bike shop']
  }, callback);
}

function callback(results, status) {
  if (status === google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
  var service = new google.maps.places.PlacesService(map);
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent('<div><strong>' + place.name +
                          '</strong><br>' + '<br>' +
                          place.vicinity + '</div>');
    infowindow.open(map, this);
  });
}
