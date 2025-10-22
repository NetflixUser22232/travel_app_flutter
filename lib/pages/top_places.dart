import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/top_places_widget.dart';

class TopPlaces extends StatefulWidget {
  const TopPlaces({super.key});

  @override
  State<TopPlaces> createState() => _TopPlacesState();
}

class _TopPlacesState extends State<TopPlaces> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: width / 5),
                  Text(
                    "Top Places",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Expanded(
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 8, right: 3, top: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  width: width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TopPlacesWidget(
                              image: "assets/images/bali.jpg",
                              text: "Bali",
                            ),

                            // Second Place
                            TopPlacesWidget(
                              image: "assets/images/india.jpg",
                              text: "India",
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TopPlacesWidget(
                              image: "assets/images/mexico.jpg",
                              text: "Mexico",
                            ),

                            // Second Place
                            TopPlacesWidget(
                              image: "assets/images/france.jpg",
                              text: "France",
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TopPlacesWidget(
                              image: "assets/images/newyork.jpg",
                              text: "New York",
                            ),

                            // Second Place
                            TopPlacesWidget(
                              image: "assets/images/dubai.jpg",
                              text: "Dubai",
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.2),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
