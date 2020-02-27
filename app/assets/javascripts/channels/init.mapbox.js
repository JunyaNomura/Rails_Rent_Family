import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  }
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
            // Success function
      showPosition,
            // Error function
       null,
            // Options. See MDN for details.
        {
               enableHighAccuracy: true,
               timeout: 5000,
               maximumAge: 0
            });
};

export { initMapbox };