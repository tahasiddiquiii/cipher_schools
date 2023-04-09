import 'dart:convert';
import 'dart:developer';
import 'dart:math';
import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_schools/common/widgets/custom_button.dart';
import 'package:cipher_schools/features/courses/widgets/category.dart';
import 'package:cipher_schools/features/courses/widgets/recomended_course.dart';
import 'package:cipher_schools/features/courses/widgets/single_course.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cipher_schools/common/widgets/stars.dart';
import 'package:cipher_schools/constants/global_variables.dart';

import 'package:cipher_schools/features/home/widgets/single_product.dart';
import 'package:cipher_schools/features/home/widgets/single_user.dart';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:signed_spacing_flex/signed_spacing_flex.dart';

class CoursesScreen extends StatefulWidget {
  static const String routeName = '/home';
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  bool value = true;

  List imageList = [
    {
      "id": 1,
      "image_path": 'assets/images/banner1.jpg',
      "name": 'App Development With Flutter',
      "box_name": 'App Development',
      "icon_image": 'assets/images/Aditya-100ms.jpg',
      "icon_name": 'Aditya Tiwari',
      "button_lable": 'Watch'
    },
    {
      "id": 2,
      "image_path": 'assets/images/banner2.jpg',
      "name": 'Python & Django For Beginners',
      "box_name": 'Programming',
      "icon_image": 'assets/images/Cipherschools_icon.png',
      "icon_name": 'Cipher Schools',
      "button_lable": 'Watch'
    },
    {
      "id": 3,
      "image_path": 'assets/images/banner3.jpg',
      "name": 'FREE Mock IELTS/TOEFL',
      "box_name": 'Assessment test',
      "icon_image": 'assets/images/Cipherschools_icon.png',
      "icon_name": 'Languify',
      "button_lable": 'Try now'
    },
    {
      "id": 4,
      "image_path": 'assets/images/banner4.jpg',
      "name": 'Full-stack Development using MERN',
      "box_name": 'Web development',
      "icon_image": 'assets/images/Cipherschools_icon.png',
      "icon_name": 'Cipher Schools',
      "button_lable": 'Watch'
    },
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: GlobalVariables.shadowcolorColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: GlobalVariables.appBarGradient,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Image.asset(
                          'assets/images/Cipherschools_icon.png',
                          width: 30,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'CipherSchools',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        CupertinoIcons.compass,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        'Browse',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Transform.rotate(
                        angle: -90 * 3.14 / 180,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                        ),
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: Switch(
                          value: value,
                          activeColor: Colors.black,
                          inactiveThumbColor: Colors.deepPurple,
                          inactiveTrackColor: Colors.black12,
                          activeThumbImage:
                              const AssetImage('assets/images/moon.jpg'),
                          inactiveThumbImage:
                              const AssetImage('assets/images/sun.jpg'),
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          },
                        ),
                      ),
                      const Icon(
                        CupertinoIcons.bell,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.search,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {},
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 9 : 7,
                          height: 7.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? GlobalVariables.selectedNavBarColor
                                  : Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  child: IconButton(
                    icon: const Icon(
                      CupertinoIcons.arrowtriangle_left_fill,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () => carouselController.previousPage(),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: const Icon(
                      CupertinoIcons.arrowtriangle_right_fill,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () => carouselController.nextPage(),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 27,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          imageList[currentIndex]['name'],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 25,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  imageList[currentIndex]['box_name'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: Image.asset(
                                imageList[currentIndex]['icon_image'],
                                width: 20,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                imageList[currentIndex]['icon_name'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 25,
                          width: 70,
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
                              children: [
                                Text(
                                  imageList[currentIndex]['button_lable'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recomended Courses',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    height: 25,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Popular',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RecomendGridB(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Latest Videos',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const RecomendGridB(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Popular Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Category(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'All Courses',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const GridB(),
          ],
        ),
      ),
    );
  }
}
