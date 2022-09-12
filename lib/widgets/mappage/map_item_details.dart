import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kazinow/model/map_marker.dart';

import 'location_marker.dart';

class MapItemDetails extends StatelessWidget {
  final MapMarker mapMarker;
  const MapItemDetails({Key? key, required this.mapMarker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              '${mapMarker.number} of 7',
              style: GoogleFonts.prompt(),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.pink.withOpacity(
                              0.7,
                            ),
                            width: 4)),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(mapMarker.image)),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        mapMarker.name,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        mapMarker.job,
                        style: GoogleFonts.prompt(),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () => null,
              color: MARKER_COLOR,
              elevation: 7,
              child: Text(
                'Order service',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
