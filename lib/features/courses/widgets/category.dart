import 'package:cipher_schools/constants/global_variables.dart';

import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "image_path": 'assets/images/c3.jpg',
      "name": 'Mobile App Development',
    },
    {
      "id": 2,
      "image_path": 'assets/images/c4.jpg',
      "name": 'Web Development',
    },
    {
      "id": 3,
      "image_path": 'assets/images/c9.jpg',
      "name": 'Graphic Design',
    },
    {
      "id": 4,
      "image_path": 'assets/images/c5.jpg',
      "name": 'Data Science',
    },
    {
      "id": 5,
      "image_path": 'assets/images/c2.jpg',
      "name": 'Digital Marketing',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: Image.asset(
                    "${gridMap.elementAt(index)['image_path']}",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['name']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 14.0),
                      Center(
                        child: Container(
                          height: 25,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: GlobalVariables.selectedNavBarColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Add to Interests',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
