import 'package:flutter/material.dart';
import 'screens/rider_home.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(
    title: 'Taxi Bid App',
    theme: ThemeData(primarySwatch: Colors.yellow),
    home: RiderHomeScreen(),
  );
}