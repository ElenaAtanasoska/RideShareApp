import 'package:flutter/material.dart';
import 'package:ride_share/screens/history_screen.dart';
import 'package:ride_share/screens/login_screen.dart';
import 'package:ride_share/screens/profile_screen.dart';
import 'package:ride_share/screens/register_screen.dart';
import 'package:ride_share/screens/routes_drivers_screen.dart';
import 'package:ride_share/screens/routes_passengers_screen.dart';
import 'package:ride_share/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route History',
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/history': (context) => HistoryScreen(),
        '/routesDrivers': (context) => RoutesDriversScreen(),
        '/routesPassengers': (context) => RoutesPassengersScreen(),
      },
    );
  }
}
