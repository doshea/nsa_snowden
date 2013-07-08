var snowden_map = {

  map: null,

  'display_map': function (lat, lng) {
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: 14,
      mapTypeId: google.maps.MapTypeId.HYBRID
    };
    var canvas = $('#map-canvas')[0];
    snowden_map.map = new google.maps.Map(canvas, mapOptions);
  },

  add_marker: function(lat, lng, title) {
    var latlng = new google.maps.LatLng(lat, lng);
    new google.maps.Marker({
      position: latlng,
      map: snowden_map.map,
      title: title
    });
  }


}