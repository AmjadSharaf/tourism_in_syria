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
            child: Hero(
              tag: dest['city'],
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image(
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width,
                  image: AssetImage('images/food.jpg'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, size: 30, color: Colors.black),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sort, size: 30, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
