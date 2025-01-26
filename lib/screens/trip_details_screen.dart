import 'package:flutter/material.dart';
import 'package:ride_share/widgets/progress_bar.dart';
import 'package:ride_share/widgets/trip_form.dart'; // Import the TripForm widget
import 'package:ride_share/screens/vehicle_details_screen.dart';

class TripDetailsScreen extends StatefulWidget {
  @override
  _TripDetailsScreenState createState() => _TripDetailsScreenState();
}

class _TripDetailsScreenState extends State<TripDetailsScreen> {
  // Controllers for the form fields
  final TextEditingController departureController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController durationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Trip Details')),
      body: Column(
        children: [
          // Progress Bar at the top
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: ProgressBar(currentStep: 1, totalSteps: 4),
          // ),

          // Expanded area for the trip form
          Expanded(
              //padding: const EdgeInsets.all(16.0),
              child: TripForm( // Use TripForm instead of calling TripDetailsScreen
                departureController: departureController,
                destinationController: destinationController,
                dateController: dateController,
                timeController: timeController,
                durationController: durationController,
              ),

          ),
        ],
      ),
    );
  }
}
