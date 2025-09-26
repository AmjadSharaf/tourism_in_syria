import 'package:flutter/material.dart';

class DestisnationsScreen extends StatelessWidget {
  final dest;
  const DestisnationsScreen({super.key, required this.dest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0, 7),
                  blurRadius: 15,
                ),
              ],
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image(
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.width,
              image: AssetImage('images/food.jpg'),
            ),
          ),
          Text(dest['city']),
        ],
      ),
    );
  }
}
