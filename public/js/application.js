$(document).ready(function() {
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
});
