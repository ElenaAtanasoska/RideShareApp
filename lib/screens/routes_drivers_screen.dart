import 'package:flutter/material.dart';
import 'package:ride_share/models/route_model.dart';
import 'package:ride_share/screens/profile_screen.dart';
import 'package:ride_share/widgets/route_drivers_card.dart';


class RoutesDriversScreen extends StatelessWidget {
  final List<RouteModel> activeRoutes = [
    RouteModel(from: 'City1', to: 'City2', date: '11/01/2025', time: '10:00', driver: 'Name1', passengers: 3),
    RouteModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '11:00', driver: 'Name1', passengers: 4),
    RouteModel(from: 'City1', to: 'City2', date: '13/01/2025', time: '14:00', driver: 'Name1', passengers: 2),
    RouteModel(from: 'City1', to: 'City2', date: '17/01/2025', time: '18:00', driver: 'Name1', passengers: 1),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Routes by drivers",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: activeRoutes.length,
        itemBuilder: (context, index) {
          return RouteDriversCard(route: activeRoutes[index]);
        },
      ),
    );
  }
}