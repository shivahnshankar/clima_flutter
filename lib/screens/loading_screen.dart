import 'package:flutter/material.dart';
import 'package:clima_flutter/services/location.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    if (location != null) {
      print('Latitude: ${location.latitude}, Longitude: ${location.longitude}');
    } else {
      print('Failed to get location');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
