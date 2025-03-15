import 'package:flutter/material.dart';
import 'petsclass.dart';

// OwnerDetails widget
class OwnerDetails extends StatelessWidget {
  final Petsclass pet; // Variable to hold pet details

  const OwnerDetails({super.key, required this.pet}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Prevent default back button
        backgroundColor: Color(0xFF702963), // AppBar color
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
          child: Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white, size: 30), // Back button icon
        ),
        centerTitle: true, // Center the title
        title: Text(
          "Owner Details", // Title of the AppBar
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lora'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0), // Padding around the body
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 16,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Card(
                    color: Color(0xFF702963),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the start
                        children: [
                          // Display owner's name
                          Text(
                            "Owner Name: ${pet.ownername}",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10), // Space between text elements
                          // Display owner's phone number
                          Text(
                            "Phone: ${pet.ownerPhone}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10), // Space between text elements
                          // Display owner's location
                          Text(
                            "Location: ${pet.ownerLocation}",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              width: 330,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF800080),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    spreadRadius: 3,
                    blurRadius: 24,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pets, size: 30, color: Colors.white),
                    SizedBox(width: 16),
                    Text(
                      "Call", // Adopt button label
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Lora',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
