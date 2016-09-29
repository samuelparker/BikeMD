$(document).ready(function() {
  enableHotspots();
  initMap();
});

var enableHotspots = function(){
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

var initMap = function() {
    var uluru = {lat: -25.363, lng: 131.044};
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 8,
      center: uluru
    });
    var marker = new google.maps.Marker({
      position: uluru,
      map: map
    });
  }
