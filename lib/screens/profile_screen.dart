import 'package:flutter/material.dart';
import 'package:ride_share/screens/routes_drivers_screen.dart';
import 'history_screen.dart';
import '../models/profile_model.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileModel profile = ProfileModel(
    username: 'User',
    phoneNumber: '001/222-333',
    email: 'user@mail.com',
    location: 'City, Country',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        title: const Text(
          'Profile Info',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => RoutesDriversScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 30),

              Text(
                'User Info',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 20),

              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue[500],
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 80),


              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ProfileCard(
                  icon: Icons.person,
                  text: profile.username,
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ProfileCard(icon: Icons.phone, text: profile.phoneNumber),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ProfileCard(icon: Icons.email, text: profile.email),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ProfileCard(icon: Icons.location_on, text: profile.location),
              ),
              const Divider(),
              const SizedBox(height: 70),


              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HistoryScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                ),
                child: const Text(
                  'View History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}