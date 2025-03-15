import 'package:flutter/material.dart';
import 'petsclass.dart';
import 'petdetails.dart';

// PetCategoryPage widget
class PetCategoryPage extends StatelessWidget {
  final List<Petsclass> pets; // List of pets in the category
  final String category; // Category name

  // Constructor to initialize the pets and category
  const PetCategoryPage({Key? key, required this.pets, required this.category}) : super(key: key);

  // Method to build the layout for each pet
  Widget petLayout(Petsclass pet, BuildContext context) {
    return Stack(
      children: [
        // Button to navigate to pet details when pressed
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => petdetails(pet: pet), // Navigate to pet details
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 16,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Card(
              color: Colors.white, // Card background color
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image of the pet
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      pet.image, // Image asset from the pet class
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                  // Row for age group and gender icon
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Age group label
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 26,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Card(
                                  color: Colors.purple[800],
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                    child: Text(
                                      pet.agegroup,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Gender icon
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 0.9,
                                      blurRadius: 20,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    pet.gender,
                                    color: pet.gendercol, // Gender color
                                    size: 35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Pet name and owner name
                  ListTile(
                    title: Text(
                      pet.petname,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      pet.ownername,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Favorite button positioned over the card
        Positioned(
          left: 30,
          top: 30,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(0, 5),
                ),
              ],
            ),
              child: Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 35,
              ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the title
        automaticallyImplyLeading: false, // Prevent default back button
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
        ),
        title: Text(
          category, // Display category name in the title
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Lora',
          ),
        ),
        backgroundColor: Color(0xFF702963), // AppBar color
      ),
      body: Column(
        children: [
          // Title for available pets in the category
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " Available $category ", // Display available pets message
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF702963),
                fontFamily: 'Lora',
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: pets.map((pet) => petLayout(pet, context)).toList(), // Map pets to their layouts
            ),
          ),
        ],
      ),
    );
  }
}
