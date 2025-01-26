import 'package:flutter/material.dart';
import '../widgets/seats_and_price_form.dart';

class SeatsAndPriceScreen extends StatelessWidget {
  final TextEditingController seatsController = TextEditingController(text: '1');
   final TextEditingController fareController = TextEditingController();

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
            child: SeatsAndPriceWidget(
              seatsController: seatsController,
              fareController: fareController,
            ),
          ),

        ],
      ),
    );
  }
}
