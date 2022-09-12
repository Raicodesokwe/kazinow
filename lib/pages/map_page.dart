import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:kazinow/widgets/mappage/map_item_details.dart';
import 'package:kazinow/model/map_marker.dart';
import 'package:latlong2/latlong.dart' as latLng;

import '../widgets/mappage/location_marker.dart';

const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoibXVyYWltYXBwZXIiLCJhIjoiY2w3eDg5YXpnMDhrODNvbXQzamduYmw5bSJ9.YdCn1YoW-mi9o9bAXMtY1A';
const MAPBOX_STYLE = 'mapbox.mapbox-streets-v8';

final _myLocation = latLng.LatLng(-1.038396, 37.072512);

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  List<Marker> _buildMarkers() {
    final _markerList = <Marker>[];
    for (int i = 0; i < mapMarkers.length; i++) {
      final mapItem = mapMarkers[i];
      _markerList.add(Marker(
          height: 40,
          width: 40,
          point: mapItem.location,
          builder: (_) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                height: 30,
                width: 30,
                child: Center(
                  child: Image.asset(
                    'assets/images/man.png',
                    scale: 5,
                  ),
                ),
                decoration:
                    BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
              ),
            );
          }));
    }
    return _markerList;
  }

  late AnimationController controller;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 950));
    fadeAnimation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _markers = _buildMarkers();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
          'Near you',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: FadeTransition(
        opacity: fadeAnimation,
        child: Stack(children: [
          FlutterMap(
            options: MapOptions(
                minZoom: 5, maxZoom: 18, zoom: 13, center: _myLocation),
            nonRotatedLayers: [
              TileLayerOptions(
                  urlTemplate:
                      'https://api.mapbox.com/styles/v1/muraimapper/cl7x8nsyz009u15o63fpc2d8f/tiles/256/{z}/{x}/{y}@2x?access_token={accessToken}',
                  additionalOptions: {
                    'accessToken': MAPBOX_ACCESS_TOKEN,
                    'id': MAPBOX_STYLE
                  }),
              MarkerLayerOptions(markers: _markers),
              MarkerLayerOptions(markers: [
                Marker(
                    point: _myLocation,
                    builder: (_) {
                      return LocationMarker();
                    })
              ]),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            height: size.height * 0.3,
            child: PageView.builder(
                controller: _pageController,
                itemCount: mapMarkers.length,
                itemBuilder: (_, index) {
                  final item = mapMarkers[index];
                  return MapItemDetails(mapMarker: item);
                }),
          )
        ]),
      ),
    );
  }
}
