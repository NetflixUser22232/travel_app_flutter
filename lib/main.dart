import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/login.dart';
import 'package:flutter_travel_app/pages/home_page.dart';
import 'package:flutter_travel_app/pages/signup.dart';
import 'package:flutter_travel_app/pages/top_places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Signup(),
      //  Login(),
      // TopPlaces(),
      // HomePage(),
    );
  }
}
