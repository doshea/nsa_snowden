  function display_map(lat, lng) {
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: 12,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var canvas = $('#map-canvas')[0];
    new google.maps.Map(canvas, mapOptions);
  }