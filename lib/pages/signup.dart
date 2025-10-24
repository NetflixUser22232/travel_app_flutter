import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/home_page.dart';
import 'package:flutter_travel_app/pages/login.dart';
import 'package:flutter_travel_app/services/database.dart';
import 'package:flutter_travel_app/services/shared_preferences.dart';
import 'package:random_string/random_string.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "", password = "", name = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  registration() async {
    if (nameController.text != "" && emailController.text != "") {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        String id = randomAlphaNumeric(10);
        Map<String, dynamic> userInfoMap = {
          "Name": nameController.text,
          "Email": emailController.text,
          "Image":
              "https://firebasestorage.googleapis.com/v0/b/barberapp-ebcc1.appspot.com/o/icon1.png?alt=media&token=0fad24a5-a01b-4d67-b4a0-676fbc75b34a",
          "Id": id,
        };
        await SharedpreferenceHelper().saveUserDisplayName(nameController.text);
        await SharedpreferenceHelper().saveUserEmail(emailController.text);
        await SharedpreferenceHelper().saveUserId(id);
        await SharedpreferenceHelper().saveUserImage(
          "https://firebasestorage.googleapis.com/v0/b/barberapp-ebcc1.appspot.com/o/icon1.png?alt=media&token=0fad24a5-a01b-4d67-b4a0-676fbc75b34a",
        );
        await DatabaseMethods().assUserDetails(userInfoMap, id).then((value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                "Registered Successfully",
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
            ),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Password provided is to weak",
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.orangeAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18),
              ),
            ),
          );
        }
      }
    }
  }

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
              padding: EdgeInsets.only(left: 30),
              margin: EdgeInsets.only(left: width * 0.045, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white60),
                controller: nameController,
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
              padding: EdgeInsets.only(left: 30),
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white60),
                controller: emailController,
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
              padding: EdgeInsets.only(left: 30),
              margin: EdgeInsets.only(left: width * 0.045, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(173, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white60),
                controller: passwordController,
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
