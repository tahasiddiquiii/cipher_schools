import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CreatorsFrom extends StatefulWidget {
  const CreatorsFrom({Key? key}) : super(key: key);

  @override
  State<CreatorsFrom> createState() => _CreatorsFromState();
}

class _CreatorsFromState extends State<CreatorsFrom> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "image_path": 'assets/images/company1.png',
    },
    {
      "image_path": 'assets/images/company2.png',
    },
    {
      "image_path": 'assets/images/company3.png',
    },
    {
      "image_path": 'assets/images/company4.png',
    },
    {
      "image_path": 'assets/images/company5.png',
    },
    {
      "image_path": 'assets/images/company6.png',
    },
    {
      "image_path": 'assets/images/company7.png',
    },
    {
      "image_path": 'assets/images/company8.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(10.0), // Set the border radius
              child: Container(
                width: 200,
                child: Column(
                  children: [
                    Image.asset(
                      "${gridMap.elementAt(index)['image_path']}",
                      width: double.infinity,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
