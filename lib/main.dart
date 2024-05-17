import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/bloc/weather_bloc.dart';
import 'package:weather_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _determinePosition(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
         
            return BlocProvider<WeatherBloc>(
              create: (context) => WeatherBloc()
                ..add(
                    FeatchingWeatherEvent(position: snapshot.data as Position)),
              child: const HomePage(),
            );
          } else if (snapshot.error == "Location services are disabled.") {
            return const Scaffold(
                body: Center(
              child: Text("Location services are disabled."),
            ));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;
  debugPrint("Start");

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    debugPrint("Location services are disabled.................");
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      debugPrint("Location permissions are denied");
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    debugPrint(
        "Location permissions are permanently denied, we cannot request permissions.");
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  debugPrint("ok");
  return await Geolocator.getCurrentPosition();
}
