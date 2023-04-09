import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class BestHereButton extends StatefulWidget {
  const BestHereButton({Key? key}) : super(key: key);

  @override
  State<BestHereButton> createState() => _BestHereButtonState();
}

class _BestHereButtonState extends State<BestHereButton> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "box_name": 'App Development',
    },
    {
      "box_name": 'Web Development',
    },
    {
      "box_name": 'Data Science',
    },
    {
      "box_name": 'Graphic Design',
    },
    {
      "box_name": 'Photography',
    },
    {
      "box_name": 'Marketing',
    },
    {
      "box_name": 'Language Learning',
    },
    {
      "box_name": 'Music Production',
    },
    {
      "box_name": 'Fitness',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 228, 230, 235),
              ),
              height: 50,
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "${gridMap.elementAt(index)['box_name']}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Other button style properties can be added here
            ),
          );
        },
      ),
    );
  }
}
