import 'package:flutter/material.dart';

class ExlusiveHotel extends StatelessWidget {
  const ExlusiveHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Exlusive Hotels",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "All Data",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff3ebace),
            ),
          ),
        ],
      ),
    );
  }
}
