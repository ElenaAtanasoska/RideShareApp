import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final int currentStep; // Current step in the progress bar (1-based index)
  final int totalSteps; // Total number of steps

  ProgressBar({required this.currentStep, required this.totalSteps});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        totalSteps,
            (index) {
          bool isActive = index < currentStep;
          return Expanded(
            child: Container(
              height: 5,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: isActive ? Colors.blue : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        },
      ),
    );
  }
}
