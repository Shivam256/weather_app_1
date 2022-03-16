import 'package:climia_app/screens/location_screen.dart';
import 'package:flutter/material.dart';


import 'package:climia_app/screens/location_screen.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:climia_app/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData() async {

    var weatherData = await WeatherModel().getLocationWeather();
    print("i am here");

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LocationScreen(locationWeather: weatherData,)));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SpinKitDoubleBounce(color: Colors.white, size: 100),
    ));
  }
}
