import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                "assets/images/login.png",
                width: width,
                height: height * 0.36,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: height * 0.022),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 40),
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
            SizedBox(height: height * 0.011),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: const Color.fromARGB(186, 255, 255, 255),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.022),
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
                  "Sign In",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // For height 5
            SizedBox(height: height * 0.006),
            Center(
              child: Text(
                "or",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.006),
            Container(
              height: height * 0.055,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(131, 116, 121, 127),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png",
                    width: 30,
                    height: 30,
                    fit: BoxFit.cover,
                    color: Color(0xfffea720),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Login with Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.011),
            Center(
              child: Text(
                "Don't have an account",
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
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Center(
                child: Text(
                  "Signup",
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
