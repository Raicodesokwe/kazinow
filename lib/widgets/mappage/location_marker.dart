import 'package:flutter/material.dart';

const MARKER_COLOR = Colors.pink;

class LocationMarker extends StatelessWidget {
  const LocationMarker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: MARKER_COLOR, shape: BoxShape.circle),
    );
  }
}
