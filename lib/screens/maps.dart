// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

void _onMapCreated(GoogleMapController controller) {
  _markers.add(const Marker(
      markerId: const MarkerId('id-1'),
      position: LatLng(22.54488131, 88.3403691)));
}

Set<Marker> _markers = {};

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: const CameraPosition(
          target: LatLng(22.54488131, 88.3403691),
          zoom: 15,
        ),
      ),
    );
  }
}
