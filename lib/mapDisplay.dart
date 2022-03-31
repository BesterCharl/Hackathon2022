import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class mapDisplay extends StatefulWidget {
  const mapDisplay({Key? key}) : super(key: key);

  @override
  _mapDisplayState createState() => _mapDisplayState();
}

class _mapDisplayState extends State<mapDisplay> {
  late GoogleMapController _mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  final Location _location = Location();

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _location.onLocationChanged.listen((l) {
      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(target: _center),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
          ],
        ),
      ),
    );
  }
}
