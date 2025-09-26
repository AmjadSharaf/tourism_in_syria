import 'package:flutter/material.dart';

class TellUs extends StatelessWidget {
  const TellUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 150),
      child: Text(
        "Tell us about your destination in \nSyria !!",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
      ),
    );
  }
}
