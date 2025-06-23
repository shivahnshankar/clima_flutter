import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print('Error occurred while fetching location: $e');
    }
  }
}

// int condition = weatherData['weather'][0]['id'];
// String name = weatherData['name'];
// double temp = weatherData['main']['temp'];
