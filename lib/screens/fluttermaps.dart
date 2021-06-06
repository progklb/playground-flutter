/*https://github.com/fleaflet/flutter_map*/

/*
Alternatives:
https://pub.dev/packages/flutter_google_maps
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import "package:latlong/latlong.dart";

class FlutterMaps extends StatelessWidget {
  static const String route = 'fluttermaps';

  AlertDialog createAlert(
      BuildContext context, String header, String description) {
    return AlertDialog(
      title: Text(header),
      content: Text(description),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }

  Container createTextField(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Example input field",
                fillColor: Colors.yellow),
            onSubmitted: (String value) async {
              await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return createAlert(context, "You entered:", value);
                  });
            }));
  }

  FlutterMap createMap(BuildContext context) {
    return new FlutterMap(
        options: new MapOptions(zoom: 12.0, center: new LatLng(-33.96, 22.45)),
        layers: [
          new TileLayerOptions(
              opacity: 1,
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Flutter Map")),
        body: Container(
          child: new Stack(
            children: <Widget>[createMap(context), createTextField(context)],
          ),
        ));
  }
}
