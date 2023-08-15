import 'package:flutter/material.dart';
import 'package:covid_19_tracker/constants.dart';
import 'package:covid_19_tracker/components/number_card.dart';
import 'package:covid_19_tracker/city.dart';
import 'package:google_fonts/google_fonts.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 45,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '${city.name} | ${city.state}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberCard(title: 'Confirmed', value: city.confirmed),
                NumberCard(title: 'Deceased', value: city.deceased),
                NumberCard(title: 'Recovered', value: city.recovered),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 45,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Delta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberCard(title: 'Confirmed', value: city.deltaConfirmed),
                NumberCard(title: 'Deceased', value: city.deltaDeceased),
                NumberCard(title: 'Recovered', value: city.deltaRecovered),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
