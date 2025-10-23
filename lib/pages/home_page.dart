import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height / 2.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/home.png",
                  width: width,
                  height: height / 2.5,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            "assets/images/pin.png",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Spacer(),
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(Icons.add, color: Colors.blue, size: 30),
                        ),
                      ),
                      SizedBox(width: 20),
                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(60),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "assets/images/boy.jpg",
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160, left: 20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Travelers",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Lato",
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          "Travel Community App",
                          style: TextStyle(
                            color: const Color.fromARGB(205, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: height / 2.7,
                  ),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: width * 0.005),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search your destination",
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Sized Box
            SizedBox(height: 40),

            Container(
              margin: EdgeInsets.only(
                left: width * 0.075,
                right: width * 0.075,
              ),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  // width: width * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(30),
                              child: Image.asset(
                                "assets/images/boy.jpg",
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: width * 0.045),
                            Text(
                              "Meer Zafar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Image.asset("assets/images/tajmahal.jpg"),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.blue),
                            Text(
                              "Taj Mahal, Agra, India",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Lorem ipsum is a dummy text to check weather it is working or not",
                          style: TextStyle(
                            color: const Color.fromARGB(179, 0, 0, 0),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            // Like and its icon
                            Icon(Icons.favorite_outline_sharp),
                            SizedBox(width: 10),
                            Text(
                              "Like",
                              style: TextStyle(
                                color: const Color.fromARGB(179, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 30),
                            // Comments Section
                            Icon(Icons.comment_outlined),
                            SizedBox(width: 10),
                            Text(
                              "Comments",
                              style: TextStyle(
                                color: const Color.fromARGB(179, 0, 0, 0),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
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
