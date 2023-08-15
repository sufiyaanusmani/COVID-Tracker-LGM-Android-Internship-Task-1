import 'package:flutter/material.dart';
import 'package:covid_19_tracker/screens/loading_screen.dart';

void main() {
  runApp(const CovidTracker());
}

class CovidTracker extends StatelessWidget {
  const CovidTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
