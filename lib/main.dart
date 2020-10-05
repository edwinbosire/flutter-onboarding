import 'package:flutter/material.dart';
import 'package:onboarding/screens/onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboardig Concept',
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          var screenHeight = MediaQuery.of(context).size.height;
          return Onboarding(screenHeight: screenHeight);
        },
      ),
    );
  }
}
