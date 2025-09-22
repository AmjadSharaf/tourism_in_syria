import 'package:flutter/material.dart';
import 'package:tourism_in_syria/Screen/CardPage.dart';
import 'package:tourism_in_syria/Wedget/listIcon.dart';
import 'package:tourism_in_syria/Wedget/tellUs.dart';
import 'package:tourism_in_syria/Wedget/textDestisnations.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 40),
            TellUs(),
            SizedBox(height: 20),
            ListIcon(),
            SizedBox(height: 20),
            TextDestisnations(),
            SizedBox(height: 20),
            CardPage(),
          ],
        ),
      ),
    );
  }
}
