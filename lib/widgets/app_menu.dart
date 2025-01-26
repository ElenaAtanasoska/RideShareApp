import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'profile') {
          Navigator.pushNamed(context, '/profile');
        } else if (value == 'posts') {
          Navigator.pushNamed(context, '/routesPassengers');
        } else if (value == 'travels') {
          Navigator.pushNamed(context, '/routesDrivers');
        } else if (value == 'new route') {
          Navigator.pushNamed(context, '/tripDetails');
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'profile',
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'posts',
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Text(
                'Posts (Routes from Passenger)',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'travels',
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Text(
                'Travels (Routes Posted by Drivers)',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          PopupMenuItem<String>(
            value: 'new route',
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Text(
                'Add New Route',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ];
      },
      icon: Icon(Icons.menu, color: Color(0xFF1F1047), size: 30),
    );
  }
}
