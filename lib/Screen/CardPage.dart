
import 'package:flutter/material.dart';
import 'package:tourism_in_syria/databases.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber[100],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destination.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 210,

            decoration: BoxDecoration(
              color: Colors.black,

              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  bottom: 15,
                  child: Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${destination[index]['activities'].length} Activities",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "${destination[index]['description']}",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                    image: AssetImage(destination[index]['imageUrl']),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
