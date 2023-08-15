import 'package:flutter/material.dart';
import 'package:covid_19_tracker/api_network.dart';
import 'package:covid_19_tracker/city.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:covid_19_tracker/screens/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  APINetwork apiNetwork =
      APINetwork(url: 'https://data.covid19india.org/state_district_wise.json');

  List<City> cities = [];

  void getData() async {
    var decodedData = await apiNetwork.getData();
    for (String stateName in decodedData.keys) {
      for (String cityName in decodedData[stateName]['districtData'].keys) {
        City city = City(
            name: cityName,
            state: stateName,
            confirmed: decodedData[stateName]['districtData'][cityName]
                ['confirmed'],
            deceased: decodedData[stateName]['districtData'][cityName]
                ['deceased'],
            recovered: decodedData[stateName]['districtData'][cityName]
                ['recovered'],
            deltaConfirmed: decodedData[stateName]['districtData'][cityName]
                ['delta']['confirmed'],
            deltaDeceased: decodedData[stateName]['districtData'][cityName]
                ['delta']['deceased'],
            deltaRecovered: decodedData[stateName]['districtData'][cityName]
                ['delta']['recovered']);
        cities.add(city);
      }
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomeScreen(cities: cities);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.amber,
          size: 100.0,
        ),
      ),
    );
  }
}
