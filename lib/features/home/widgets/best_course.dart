import 'package:cipher_schools/constants/global_variables.dart';
import 'package:flutter/material.dart';

class BestGridB extends StatefulWidget {
  const BestGridB({Key? key}) : super(key: key);

  @override
  State<BestGridB> createState() => _BestGridBState();
}

class _BestGridBState extends State<BestGridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "id": 1,
      "image_path": 'assets/images/c8.jpg',
      "box_name": 'App Development',
      "name": 'App Development With Flutter',
      "des_one": 'no. of videos: 130',
      "des_two": '21.8 hours',
      "icon_image": 'assets/images/Aditya-100ms.jpg',
      "icon_name": 'Anubhav mishra',
      "lable": 'Instructor'
    },
    {
      "id": 2,
      "image_path": 'assets/images/c4.jpg',
      "box_name": 'Web Development',
      "name": 'The Complete Web Developer Course',
      "des_one": 'no. of videos: 75',
      "des_two": '12.5 hours',
      "icon_image": 'assets/images/Aman-Amazon.jpg',
      "icon_name": 'Max Schwarzmueller',
      "lable": 'Instructor'
    },
    {
      "id": 3,
      "image_path": 'assets/images/c9.jpg',
      "box_name": 'Data Science',
      "name": 'Data Science and Machine Learning Bootcamp',
      "des_one": 'no. of videos: 110',
      "des_two": '18.6 hours',
      "icon_image": 'assets/images/Ayushi-Walmart.jpg',
      "icon_name": 'Jose Portilla',
      "lable": 'Instructor'
    },
    {
      "id": 4,
      "image_path": 'assets/images/c5.jpg',
      "box_name": 'Graphic Design',
      "name": 'The Ultimate Graphic Design Course',
      "des_one": 'no. of videos: 90',
      "des_two": '15.2 hours',
      "icon_image": 'assets/images/Harshit-Swiggy.jpg',
      "icon_name": 'Caler Edwards',
      "lable": 'Instructor'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 300,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            color: Colors.white,
          ),
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
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: GlobalVariables.selectedNavBarColor.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${gridMap.elementAt(index)['box_name']}",
                        style: const TextStyle(
                          color: GlobalVariables.selectedNavBarColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['des_one']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['des_two']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 17,
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
                                    fontSize: 19,
                                    color: Colors.black),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                              Text(
                                "${gridMap.elementAt(index)['lable']}",
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
