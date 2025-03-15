import 'package:flutter/material.dart';
import 'package:petapp/ownerdetails.dart';
import 'petsclass.dart';

// Pet details widget
class petdetails extends StatefulWidget {
  final Petsclass pet; // Variable to hold pet details

  const petdetails({super.key, required this.pet}); // Constructor

  @override
  State<petdetails> createState() => _petdetailsState(); // Create state
}

class _petdetailsState extends State<petdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Display pet image
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 20,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                      child: Image.asset(
                        widget.pet.image, // Pet image from the pet class
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Back button
                  Positioned(
                    top: 70,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Navigate back
                      },
                      child: Icon(Icons.arrow_back_ios_new_outlined, size: 25, color: Colors.purple),
                    ),
                  ),
                  // Favorite button
                  Positioned(
                    top: 70,
                    right: 20,
                    child: TextButton(
                      onPressed: () {
                        // Add functionality if needed
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[200],
                          child: Icon(Icons.favorite, size: 30, color: Colors.purple),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // Pet details like age, weight, and sex
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Age detail
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 5),
                          ),
                        ],

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age", style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Lora')),
                          Text(widget.pet.agegroup, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Lora')),
                        ],
                      ),
                    ),
                    // Weight detail
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 5),
                          ),
                        ],

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight", style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Lora')),
                          Text(widget.pet.weight, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Lora')),
                        ],
                      ),
                    ),
                    // Sex detail
                    Container(
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sex", style: TextStyle(color: Colors.grey[800], fontSize: 15, fontWeight: FontWeight.w600, fontFamily: 'Lora')),
                          Icon(widget.pet.gender, color: widget.pet.gendercol, size: 28),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Pet name and owner information
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.black,
                        elevation: 10,
                        child: ListTile(
                          title: Text(
                            widget.pet.petname, // Display pet name
                            style: TextStyle(color: Color(0xFF702963), fontWeight: FontWeight.w600, fontFamily: 'Lora', fontSize: 28),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(Icons.location_on_outlined, color: Color(0xFF702963), size: 20),
                              Text(
                                widget.pet.ownerLocation, // Display owner's location
                                style: TextStyle(color: Colors.grey[700], fontSize: 15, fontFamily: 'Lora', fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.only(bottom: 22),
                            child: Text(
                              widget.pet.ownername, // Display owner's name
                              style: TextStyle(color: Color(0xFF702963), fontWeight: FontWeight.w600, fontFamily: 'Lora', fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // About the pet
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 20,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ),
                          shadowColor: Colors.black,
                          elevation: 16,
                          color: Color(0xFF702963),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 16, top: 10),
                                  child: Text(
                                    "About",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Lora', fontSize: 28),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                                  child: Text(
                                    widget.pet.about, // Display about information of the pet
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Bottom navigation with buttons
          Positioned(
            bottom: 0,
            child: Container(
              width: 450,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    width: 330,
                    height: 60,

                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          // Navigate to OwnerDetails page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OwnerDetails(pet: widget.pet),
                            ),
                          );
                        },
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
                                  "Adopt", // Adopt button label
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
                    ),
                  ),
                  SizedBox(width: 25),
                  // Phone contact button
                  Container(

                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
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
                    child: Icon(Icons.phone_rounded, color: Colors.white, size: 35),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
