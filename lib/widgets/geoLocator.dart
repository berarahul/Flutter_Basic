// ignore: file_names
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';


class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  Position? _position;
  fetchPosition() async {
    bool servicedEnabled;
    LocationPermission permission;
    String latitude;
    String longitude;
    servicedEnabled = await Geolocator.isLocationServiceEnabled();
    if (!servicedEnabled) {
      Fluttertoast.showToast(msg: "Location Service is Disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "You Denied the Permission");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: "You Denied the permission forever");
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      _position = currentPosition;
      latitude = currentPosition.latitude.toString();
      longitude = currentPosition.longitude.toString();
    
      print(latitude);
        print(longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoLocator"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // ignore: unnecessary_null_comparison
          Text(this._position == null ? 'Location' : this._position.toString(),
              style: const TextStyle(fontSize: 23)),
          ElevatedButton(
              onPressed: () {
                fetchPosition();
              },
              child: Text("Get Location"))
        ]),
      ),
    );
  }
}
