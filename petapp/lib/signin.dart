import 'package:flutter/material.dart';
import 'main.dart';
import 'signup.dart';
import 'forgetpassword.dart';

// Create a stateful widget for the sign-in screen
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
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
                    'images/signin.jpg', // Image asset for sign-in
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            // Main welcome text
            Text("Woof Back!", style: TextStyle(
                color: Color(0xFF800080),
                fontSize: 40,
                fontWeight: FontWeight.w600,
                fontFamily: 'Courgette'),
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            // Instructions text
            Text("Enter your Woof Woof to Login", style: TextStyle(
                color: Colors.grey[600],
                fontFamily: 'Lora',
                fontWeight: FontWeight.w600,
                fontSize: 16),
            ),
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

            // Sign-in button
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
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
                  child: Text("Snif Snif", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: 'Lora',),
                  ),
                ),
              ),
            ),
            // Link to forgot password
            Padding(padding: EdgeInsets.symmetric(vertical: 20),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => forgetpassword())); // Navigate to forget password
              }, child: Text("Forget password?", style: TextStyle(
                color: Color(0xFF800080),
                fontSize: 16,
                fontFamily: 'Lora',
                fontWeight: FontWeight.w600,),
              )),
            ),
            // Link to sign up if user doesn't have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?  ", style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w600,
                    fontSize: 17)),
                Container(
                  height: 25,
                  width: 2,
                  color: Colors.purple, // Separator line
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signup())); // Navigate to sign up
                }, child: Text("Sign Up", style: TextStyle(
                    color: Color(0xFF800080),
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.w600,
                    fontSize: 19),
                ))
              ],
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
