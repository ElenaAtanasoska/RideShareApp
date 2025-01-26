import 'package:flutter/material.dart';
import 'package:ride_share/screens/seats_and_price_screen.dart';
import 'package:ride_share/widgets/progress_bar.dart';
import '../widgets/vehicle_form.dart';

class VehicleDetailsScreen extends StatelessWidget {
  final TextEditingController vehicleTypeController = TextEditingController();
  final TextEditingController licensePlateController = TextEditingController();
  final TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Vehicle Details')),
      body: Column(
        children: [
          // Progress Bar
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: ProgressBar(currentStep: 2, totalSteps: 4),
          // ),

          // Vehicle Form
          Expanded(
            child: VehicleForm(
              vehicleTypeController: vehicleTypeController,
              licensePlateController: licensePlateController,
              colorController: colorController,
            ),
          ),

        ],
      ),
    );
  }
}
