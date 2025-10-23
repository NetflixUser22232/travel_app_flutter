import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                bottomRight: Radius.circular(180),
              ),
              child: Image.asset(
                "assets/images/signup.png",
                width: width,
                height: height * 0.36,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: height * 0.022),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Signup",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            // For name section
            SizedBox(height: height * 0.022),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Text field for password
            SizedBox(height: height * 0.011),
            Container(
              margin: EdgeInsets.only(left: width * 0.045, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            // Email section
            // For height 20
            SizedBox(height: height * 0.022),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Text field for email
            // For height 10
            SizedBox(height: height * 0.011),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            // Section for password
            SizedBox(height: height * 0.022),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Text field for password
            SizedBox(height: height * 0.011),
            Container(
              margin: EdgeInsets.only(left: width * 0.045, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),

            // For forget password
            // SizedBox(height: height * 0.011),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.055,
              width: width,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color(0xfffc9502),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Signup",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            // For height 5
            // SizedBox(height: height * 0.006),
            SizedBox(height: height * 0.011),
            Center(
              child: Text(
                "Already have an account",
                style: TextStyle(
                  color: const Color.fromARGB(173, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Color(0xfffea720),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
