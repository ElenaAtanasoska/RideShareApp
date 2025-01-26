import 'package:flutter/material.dart';
import 'package:ride_share/screens/routes_drivers_screen.dart';
import '../models/review_model.dart';
import '../widgets/review_form.dart'; // Import the updated card widget

class ReviewConfirmScreen extends StatelessWidget {
  final route = ReviewModel(
    from: 'City1',
    to: 'City2',
    time: '12:30 PM',
    date: '2023-01-01',
    price: 500,
    seats: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Route Details'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReviewConfirmCard(route: route), // Use the card here

          // Post Route button at the bottom
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  // Handle Post Route action
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RoutesDriversScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Colors.blue[900], // Dark blue button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Post Route',
                  style: TextStyle(
                    color: Colors.white, // White text color
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
