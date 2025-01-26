import 'package:flutter/material.dart';
import 'package:ride_share/widgets/progress_bar.dart';
import '../screens/review_confirm_screen.dart';
import '../screens/vehicle_details_screen.dart'; // Import the TripDetailsScreen

class SeatsAndPriceWidget extends StatelessWidget {
  final TextEditingController seatsController;
  final TextEditingController fareController;

  SeatsAndPriceWidget({
    required this.seatsController,
    required this.fareController,
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
            child: ProgressBar(currentStep: 3, totalSteps: 4),
          ),

          // Form Fields
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Seat Count Section
                  Text(
                    'How many free seats do you have?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          int currentSeats = int.parse(seatsController.text);
                          if (currentSeats > 1) {
                            seatsController.text = (currentSeats - 1).toString();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(12),
                          backgroundColor: Colors.grey[300],
                        ),
                        child: Icon(Icons.remove, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(seatsController.text),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          int currentSeats = int.parse(seatsController.text);
                          seatsController.text = (currentSeats + 1).toString();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(12),
                          backgroundColor: Colors.grey[300],
                        ),
                        child: Icon(Icons.add, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Fare Input Section
                  Text(
                    'Fare per Seat/Person',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        'den ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Expanded(
                        child: TextField(
                          controller: fareController,
                          decoration: InputDecoration(
                            hintText: '500',
                            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_upward),
                        onPressed: () {
                          int currentFare = int.tryParse(fareController.text) ?? 0;
                          fareController.text = (currentFare + 1).toString();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_downward),
                        onPressed: () {
                          int currentFare = int.tryParse(fareController.text) ?? 0;
                          if (currentFare > 0) {
                            fareController.text = (currentFare - 1).toString();
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Cash Payment Section with Grey Background
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cash payment',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'The passenger will pay you in the car.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Back and Next Buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
              children: [
                // Back Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VehicleDetailsScreen()), // Navigate to TripDetailsScreen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    backgroundColor: Colors.blue[800], // Blue color for Back button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                SizedBox(width: 16), // Add some spacing between the buttons

                // Next Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReviewConfirmScreen()), // Navigate to SeatsAndPriceScreen
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
