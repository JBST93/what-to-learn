import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/akazaveri/clt5rj9lj00tn01pia7mra2o4"
    })
    this.#addMarkerToMap(this.markerValue)
    this.#fitMapToMarker(this.markerValue)
  }

  #addMarkerToMap(marker) {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .addTo(this.map);
  }

  #fitMapToMarker(marker) {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([marker.lng, marker.lat]);
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }
}
