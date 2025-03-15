import 'package:flutter/material.dart';
import 'petdetails.dart';
import 'splashscreen.dart';
import 'petcategorypage.dart';
import 'petsclass.dart';
import 'petslists.dart';

// Entry point of the application
void main() => runApp(MaterialApp(home: SplashScreen()));

// Main app widget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Widget to display animals view
  Widget animalsview(String petkind, String image, List<Petsclass> pets) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              // Navigate to PetCategoryPage on button press
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PetCategoryPage(pets: pets, category: petkind),
                ),
              );
            },
            child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(image, fit: BoxFit.cover),
                )),
          ),
          // Display pet kind
          Text(
            petkind,
            style: TextStyle(
              color: Colors.purple[800],
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Lora',
            ),
          )
        ],
      ),
    );
  }

  // Widget to display a single pet layout
  Widget petlayout(Petsclass pet) {
    return Stack(
      children: [
        TextButton(
          onPressed: () {
            // Navigate to pet details on button press
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => petdetails(
                  pet: pet,
                ),
              ),
            );
          },
          child: Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 16,
                    offset: Offset(0, 20),
                  ),
                ],
              ),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display pet image
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        pet.image,
                        fit: BoxFit.cover,
                        height: 300,
                        width: double.infinity,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Display age group in a card
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
                                            fontFamily: 'Lora',
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),

                                // Display pet gender icon
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
                                      color: pet.gendercol,
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
                    // Display pet name and owner name
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        title: Text(
                          pet.petname,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(
                          pet.ownername,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Favorite icon overlay
        Positioned(
          left: 30,
          top: 30,
          child:  Container(
            decoration:BoxDecoration(
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
                Icons.favorite_outline_outlined,
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
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 150,),
            Icon(Icons.pets,size: 40,color: Color(0xFF702963),),
            Text("Paw",style: TextStyle(color: Color(0xFF702963),fontFamily: 'Courgette',fontSize: 40,fontWeight: FontWeight.w500),),
            SizedBox(width: 90,),
            CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.purple,
                  child: CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/m.jpg'),
                    ),
                  ),
                )
          ],
        ),



      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.search_outlined,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[600], fontSize: 20),
                    ),
                  ),
                ),
              ),
              // Search button
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF800080),
                ),
                child: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          // Horizontal scroll view for pet categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                animalsview("Dogs", 'images/dogc.jpeg', dogList),
                animalsview("Cats", 'images/catc.png', catList),
                animalsview("Ducks", 'images/duckc.png', duckList),
                animalsview("Chicks", 'images/chickc.jpeg', chickList),
                animalsview("Mices", 'images/micesc.jpeg', miceList),
                animalsview("Birds", 'images/birdc.jpeg', birdList),
              ],
            ),
          ),
          // Expanded list view for displaying pets
          Expanded(
            child: ListView(
              children: [
                ...dogList.map((dog) => petlayout(dog)).toList(),
                ...catList.map((cat) => petlayout(cat)).toList(),
                ...duckList.map((duck) => petlayout(duck)).toList(),
                ...chickList.map((chick) => petlayout(chick)).toList(),
                ...miceList.map((mouse) => petlayout(mouse)).toList(),
                ...birdList.map((bird) => petlayout(bird)).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
