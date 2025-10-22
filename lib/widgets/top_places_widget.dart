import 'package:flutter/material.dart';

class TopPlacesWidget extends StatelessWidget {
  final String image;
  final String text;
  const TopPlacesWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Material(
      elevation: 3,
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(
              image,
              height: height * 0.33,
              width: width * 0.43,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 260),
            height: 42,
            width: width * 0.43,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
