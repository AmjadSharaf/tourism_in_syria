import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListIcon extends StatefulWidget {
  const ListIcon({super.key});

  @override
  State<ListIcon> createState() => _ListIconState();
}

class _ListIconState extends State<ListIcon> {
  int _statIndex = 0;

  @override
  Widget build(BuildContext context) {
    List listIcon = [
      FontAwesomeIcons.hotel,
      FontAwesomeIcons.house,
      FontAwesomeIcons.car,
      FontAwesomeIcons.bus,
      FontAwesomeIcons.plane,
      FontAwesomeIcons.mobile,
      FontAwesomeIcons.car,
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listIcon.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _statIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: _statIndex == index
                    ? Color(0xffD8ECF1)
                    : Color(0xffE7EBEE),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Icon(
                listIcon[index],
                color: _statIndex == index
                    ? Color(0xff3EBACE)
                    : Color.fromARGB(255, 95, 106, 114),
              ),
            ),
          );
        },
      ),
    );
  }
}
