import 'package:latlong2/latlong.dart' as latLng;

class MapMarker {
  const MapMarker({
    required this.image,
    required this.job,
    required this.name,
    required this.location,
    required this.number,
  });
  final String image;
  final String name;
  final String job;
  final String number;
  final latLng.LatLng location;
}

final _locations = [
  latLng.LatLng(-1.038496, 37.010712),
  latLng.LatLng(-1.038506, 37.020992),
  latLng.LatLng(-1.039396, 37.062512),
  latLng.LatLng(-1.039596, 37.099512),
  latLng.LatLng(-1.034296, 37.055512),
  latLng.LatLng(-1.035396, 37.042512),
  latLng.LatLng(-1.038306, 37.030222),
];
final mapMarkers = [
  MapMarker(
      image: 'assets/images/blackelectrician.jpg',
      name: 'Njoro stima',
      job: 'Electrician',
      number: '1',
      location: _locations[0]),
  MapMarker(
      image: 'assets/images/hairdresser.png',
      name: 'Suzy braids',
      job: 'Hairdresser',
      number: '2',
      location: _locations[1]),
  MapMarker(
      image: 'assets/images/farmer.jpg',
      name: 'Onyi farmer',
      job: 'Farmer',
      number: '3',
      location: _locations[2]),
  MapMarker(
      image: 'assets/images/plumber.jpg',
      name: 'Ken plumbing',
      job: 'Plumbing',
      number: '4',
      location: _locations[3]),
  MapMarker(
      image: 'assets/images/blackelectrician.jpg',
      name: 'Muli welding',
      job: 'Welding',
      number: '5',
      location: _locations[4]),
  MapMarker(
      image: 'assets/images/blackelectrician.jpg',
      name: 'Ben tiling',
      job: 'Tiling',
      number: '6',
      location: _locations[5]),
  MapMarker(
      image: 'assets/images/blackelectrician.jpg',
      name: 'Doshi roofing',
      job: 'Roofing',
      number: '7',
      location: _locations[6]),
];
