import 'package:covid_19_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_tracker/city.dart';
import 'package:covid_19_tracker/screens/cases_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatelessWidget {
  final List<City> cities;

  const HomeScreen({super.key, required this.cities});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COVID-19 Tracker',
          style: appBarTextStyle,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                const SizedBox(height: 190),
                Image.asset('images/logo.png'),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'COVID-19 Tracker',
                      textAlign: TextAlign.center,
                      textStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Developed by Sufiyaan Usmani',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.white,
                  textStyle: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CasesScreen(cities: cities),
                    ),
                  );
                },
                child: const Text('Click to view COVID-19 Info'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
