import 'package:flutter/material.dart';
import 'package:ride_share/screens/vehicle_details_screen.dart';
import 'package:ride_share/widgets/progress_bar.dart';

class TripForm extends StatelessWidget {
  final TextEditingController departureController;
  final TextEditingController destinationController;
  final TextEditingController dateController;
  final TextEditingController timeController;
  final TextEditingController durationController;

  TripForm({
    required this.departureController,
    required this.destinationController,
    required this.dateController,
    required this.timeController,
    required this.durationController,
  });

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (selectedDate != null) {
      // Format the selected date (you can use Intl package for formatted dates)
      dateController.text = '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
    }
  }

  // Function to show time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      // Format the selected time
      timeController.text = selectedTime.format(context); // Example: 12:30 PM
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with background image (without title)
          Container(
            height: 100, // Adjust height as needed
            width: 500,
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
            child: ProgressBar(currentStep: 1, totalSteps: 4),
          ),

          // Form Fields
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Departure Location Field
                  Text('Departure Location', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: departureController,
                    decoration: InputDecoration(
                      hintText: 'Where are you traveling from?',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Destination Location Field
                  Text('Destination Location', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: destinationController,
                    decoration: InputDecoration(
                      hintText: 'Where are you traveling to?',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Travel Date Field with date picker
                  Text('Travel Date', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      hintText: 'Select travel date',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true, // to show date picker
                    onTap: () {
                      _selectDate(context); // Call the date picker function
                    },
                  ),
                  SizedBox(height: 16),

                  // Travel Time Field with time picker
                  Text('Travel Time', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: timeController,
                    decoration: InputDecoration(
                      hintText: 'Select travel time',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                    readOnly: true, // to show time picker
                    onTap: () {
                      _selectTime(context); // Call the time picker function
                    },
                  ),
                  SizedBox(height: 16),

                  // Trip Duration Field
                  Text('Enter the duration of the trip', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  TextField(
                    controller: durationController,
                    decoration: InputDecoration(
                      hintText: '00:00',
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number, // Allow number input
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),

          // Next Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VehicleDetailsScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue[800], // Dark blue color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
