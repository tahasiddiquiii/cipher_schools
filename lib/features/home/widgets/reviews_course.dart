import 'package:cipher_schools/common/widgets/stars.dart';
import 'package:cipher_schools/constants/global_variables.dart';
import 'package:page_view_indicators/page_view_indicators.dart';

import 'package:flutter/material.dart';

class ReviewsCourse extends StatefulWidget {
  const ReviewsCourse({Key? key}) : super(key: key);

  @override
  State<ReviewsCourse> createState() => _ReviewsCourseState();
}

class _ReviewsCourseState extends State<ReviewsCourse> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "description":
          'I found the tutorials to be very informative and well-explained. The instructor was engaging and made the content easy to follow.',
      "icon_image": 'assets/images/Aditya-100ms.jpg',
      "icon_name": 'John Doe',
      "lable": 'Castcading Style Sheet (CSS)'
    },
    {
      "id": 2,
      "description":
          'The courses were nice and really detailed. I liked to watch them and hope to see more in future',
      "icon_image": 'assets/images/Aman-Amazon.jpg',
      "icon_name": 'Max Schwarzmueller',
      "lable": 'Hyper Text Markup Language (HTML)'
    },
    {
      "id": 3,
      "description":
          "I loved this course! The instructor was very knowledgeable and gave great examples that helped me understand the material better.",
      "icon_image": 'assets/images/Ayushi-Walmart.jpg',
      "icon_name": 'Jose Portilla',
      "lable": 'Basics of python'
    },
    {
      "id": 4,
      "description":
          "The content in this course was comprehensive and well-organized. The quizzes and assignments were challenging but helped me to reinforce my learning.",
      "icon_image": 'assets/images/Harshit-Swiggy.jpg',
      "icon_name": 'Mark Smith',
      "lable": 'Hyper Text Markup Language (HTML)'
    },
    {
      "id": 5,
      "description":
          "I found this course to be very engaging and interactive. The instructor was very responsive and provided helpful feedback on my assignments.",
      "icon_image": 'assets/images/Sanjeev-Oracle.jpg',
      "icon_name": 'Sarah Jones',
      "lable": 'Hyper Text Markup Language (HTML)'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 18.0),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          "${gridMap.elementAt(index)['icon_image']}",
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${gridMap.elementAt(index)['icon_name']}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: GlobalVariables.selectedNavBarColor),
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${gridMap.elementAt(index)['lable']}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "${gridMap.elementAt(index)['description']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    maxLines: 4,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Content:'),
                          SizedBox(
                            height: 5,
                          ),
                          Stars(rating: 4.5),
                          SizedBox(
                            height: 30,
                          ),
                          Text('Platform:'),
                          SizedBox(
                            height: 5,
                          ),
                          Stars(rating: 3.5)
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Mentor:'),
                          SizedBox(
                            height: 5,
                          ),
                          Stars(rating: 4.8),
                          SizedBox(
                            height: 30,
                          ),
                          Text('Community:'),
                          SizedBox(
                            height: 5,
                          ),
                          Stars(rating: 5)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
