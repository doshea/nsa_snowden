var map;

  function display_map(lat, lng) {
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: 14,
      mapTypeId: google.maps.MapTypeId.HYBRID
    };
    var canvas = $('#map-canvas')[0];
    map = new google.maps.Map(canvas, mapOptions);
  }

  function add_marker(lat, lng, title){
    var latlng = new google.maps.LatLng(lat, lng);
    new google.maps.Marker({
      position: latlng,
      map: map,
      title: title
      });
  }

















