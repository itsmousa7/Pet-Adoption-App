import 'package:flutter/material.dart';
import 'package:petapp/main.dart';
import 'signin.dart';

// Create a stateful widget for the sign-up screen
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header image section
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                height: 400,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30)), // Rounded bottom corners
                  child: Image.asset(
                    'images/signup.png', // Image asset for sign-up
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            // Main sign-up text
            Text("Sign Up", style: TextStyle(
              color: Color(0xFF800080),
              fontSize: 40,
              fontWeight: FontWeight.w800,
              fontFamily: 'Loraitalic',
            )),
            Padding(padding: EdgeInsets.only(top: 16)),
            // Instructions text
            Text("Create an account", style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontFamily: 'Lora',
              fontWeight: FontWeight.w600,
            )),
            // Username input container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.supervisor_account_rounded, color: Colors.grey[600],), // Username icon
                      Text("  Username", style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                      ) // Username text
                    ],
                  ),
                ),
              ),
            ),
            // Email input container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10,),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.grey[600],), // Email icon
                      Text("  Email", style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                      ) // Email text
                    ],
                  ),
                ),
              ),
            ),
            // Password input container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                width: 260,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 20,
                      offset: Offset(0,6),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.password, color: Colors.grey[600],), // Password icon
                      Text("  Password", style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'Lora',
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                      ) // Password text
                    ],
                  ),
                ),
              ),
            ),

            // Sign-up button
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())); // Navigate to main app
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF800080),
                  padding: EdgeInsets.symmetric(horizontal: 100),
                ),
                child: Text("Sign Up", style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
                ),
              ),
            ),
            // Link to sign-in if user already has an account
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?  ", style: TextStyle(
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.grey[600]),
                  ),
                  Container(
                    width: 2,
                    height: 25,
                    color: Colors.purple, // Separator line
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signin())); // Navigate to sign-in
                  }, child: Text("Login", style: TextStyle(
                      color: Color(0xFF800080),
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.w600,
                      fontSize: 19),
                  ))
                ],
              ),
            ),
            // Footer text
            Padding(padding: EdgeInsets.only(top: 30),
              child: Text("Paw", style: TextStyle(
                  color: Color(0xFF800080),
                  fontFamily: 'Courgette',
                  fontSize: 25),
              ),
            )
          ],
        ),
      ),
    );
  }
}
