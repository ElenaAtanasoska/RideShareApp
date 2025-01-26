import 'package:flutter/material.dart';
import 'package:ride_share/widgets/progress_bar.dart';
import '../screens/seats_and_price_screen.dart'; // Import the SeatsAndPriceScreen
import '../screens/trip_details_screen.dart'; // Import the TripDetailsScreen

class VehicleForm extends StatelessWidget {
  final TextEditingController vehicleTypeController;
  final TextEditingController licensePlateController;
  final TextEditingController colorController;

  VehicleForm({
    required this.vehicleTypeController,
    required this.licensePlateController,
    required this.colorController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with background image (without title)
          Container(
            height: 100, // Adjust height as needed
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'), // Add your image path here
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Progress Bar below the image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProgressBar(currentStep: 2, totalSteps: 4),
          ),

          // Form Fields
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle Type and Model Field
                  Text('Vehicle Type and Model', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: vehicleTypeController,
                    decoration: InputDecoration(
                      hintText: 'What is the make and model of your vehicle?',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),

                  // License Plate Field
                  Text('License Plate', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: licensePlateController,
                    decoration: InputDecoration(
                      hintText: 'Your License Plate',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Vehicle Color Field
                  Text('Vehicle Color', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: colorController,
                    decoration: InputDecoration(
                      hintText: 'Vehicle Color',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),

          // Back and Next Buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TripDetailsScreen()), // Navigate to TripDetailsScreen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Colors.grey, // Grey color for Back button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),

                // Next Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeatsAndPriceScreen()), // Navigate to SeatsAndPriceScreen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Colors.blue[800], // Dark blue color for Next button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
