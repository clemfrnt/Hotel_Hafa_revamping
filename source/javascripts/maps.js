// Fonction google maps qui permet d'afficher une carte avec un marqueur
function initMap() {
        var uluru = {lat: 20.869658, lng: -105.440604};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 9,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
