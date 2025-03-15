import 'package:flutter/material.dart';
import 'package:petapp/signin.dart';

// Create a stateful widget for the forget password screen
class forgetpassword extends StatefulWidget {
  const forgetpassword({super.key});

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Header image section
            Container(
              height: 300,
              width: double.infinity,

              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30)),
                child: Image.asset(
                  'images/forget.png', // Image asset for forget password
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 50,),
            // Main text asking if user forgot their password
            Text("Did you Woof your password?", style: TextStyle(
                color: Color(0xFF800080),
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontFamily: 'Loraitalic'),
            ),
            SizedBox(height: 16,),
            // Instructions text
            Text("Enter your Woof Woof to reset your password", style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontFamily: 'Lora',
                fontWeight: FontWeight.w600),
            ),
            // Email input container
            Padding(
              padding: const EdgeInsets.only(top: 40),
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

            // Submit button
            Padding(
              padding: const EdgeInsets.only(top: 40),
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
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signin())); // Navigate to main app
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF800080),
                      padding: EdgeInsets.symmetric(horizontal: 100)
                  ),
                  child: Text("Submit", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                  ),
                ),
              ),
            ),
            // Navigation to login screen
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?  "),

                Container(
                  height: 25,
                  width: 2,
                  color: Colors.purple, // Separator line
                ),

                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => signin())); // Navigate to sign in
                }, child: Text("Login", style: TextStyle(
                    color: Color(0xFF800080),
                    fontSize: 20),
                ))
              ],
            ),
            // Footer text
            Padding(
              padding: EdgeInsets.only(top: 255),
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
