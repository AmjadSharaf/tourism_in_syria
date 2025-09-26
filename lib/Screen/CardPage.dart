import 'package:flutter/material.dart';
import 'package:tourism_in_syria/Screen/Destisnations_screen.dart';
import 'package:tourism_in_syria/databases.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      // color: Colors.amber[100],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: destination.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return DestisnationsScreen(dest: destination[index]);
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.all(5),
              height: 100,
              width: 210,

              decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 5,
                    child: Container(
                      height: 140,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
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
                  Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                          color: Colors.black54,
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          offset: Offset(-4, 4),
                          color: Colors.black54,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      width: 180,
                      height: 170,
                      fit: BoxFit.cover,
                      image: AssetImage(destination[index]['imageUrl']),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.white),
                            Text(
                              destination[index]['city'],
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_searching, color: Colors.white),
                            Text(
                              destination[index]['country'],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
