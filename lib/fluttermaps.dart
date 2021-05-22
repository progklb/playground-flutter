/*https://github.com/fleaflet/flutter_map*/

/*
Alternatives:
https://pub.dev/packages/flutter_google_maps
*/

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import "package:latlong/latlong.dart";

class FlutterMaps extends StatelessWidget {
  static const String route = 'fluttermaps';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Flutter Map")),
        body: new FlutterMap(
          options:
              new MapOptions(zoom: 12.0, center: new LatLng(-33.96, 22.45)),
          layers: [
            new TileLayerOptions(
                opacity: 1,
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 80.0,
                  height: 80.0,
                  builder: (ctx) => new Container(
                    child: new FlutterLogo(),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
