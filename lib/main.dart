import 'package:flutter/material.dart';
import 'package:ride_share/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route History',
      home: ProfileScreen(),
    );
  }
}
