import 'package:flutter/material.dart';
import '../models/review_model.dart';  // Import the model
import '../screens/routes_drivers_screen.dart';
import '../widgets/progress_bar.dart'; // Import the progress bar widget

class ReviewConfirmCard extends StatelessWidget {
  final ReviewModel route;

  const ReviewConfirmCard({
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Background Image container
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
          child: ProgressBar(currentStep: 4, totalSteps: 4),
        ),

        // Card containing the content (From, To, Price, Seats, etc.)
        Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Color(0x00bbbecb).withOpacity(1.0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // From and To details
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 2),
                                  child: Icon(Icons.my_location,
                                      color: Color(0xFF1f1047), size: 26),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("From",
                                          style:
                                          TextStyle(color: Color(0xFF4c5475))),
                                      Text(route.from,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Color(0xFF1f1047), size: 30),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("To",
                                          style:
                                          TextStyle(color: Color(0xFF4c5475))),
                                      Text(route.to,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 45,
                          left: 13,
                          child: Container(
                            height: 40,
                            child: Column(
                              children: List.generate(5, (index) {
                                return Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                                  child: Container(
                                    width: 4,
                                    height: 4,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1f1047),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(route.time,
                            style: TextStyle(
                                color: Color(0xFF4c5475),
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        Text(route.date,
                            style: TextStyle(color: Color(0xFF4c5475))),
                      ],
                    ),
                  ],
                ),

                // Divider between content and action buttons
                Padding(
                  padding:
                  const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                  child: Divider(color: Color(0xFF4c5475), thickness: 1.5),
                ),

                // Price and Seats section
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 12.0, right: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Price: \$${route.price}",
                            style: TextStyle(
                              color: Color(0xFF1f1047),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Seats: ${route.seats}",
                            style: TextStyle(
                              color: Color(0xFF1f1047),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                // Confirm button at the bottom
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle confirm action

                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Edit', style: TextStyle(color: Colors.white),),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
