import 'package:covid_19_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_tracker/city.dart';
import 'package:covid_19_tracker/components/city_card.dart';

class CasesScreen extends StatelessWidget {
  final List<City> cities;

  const CasesScreen({super.key, required this.cities});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cases',
          style: appBarTextStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: cities.length,
              itemBuilder: (BuildContext context, int index) {
                return CityCard(
                  city: cities[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
