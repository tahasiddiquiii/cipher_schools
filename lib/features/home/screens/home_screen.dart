import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipher_schools/features/home/widgets/best_here_button.dart';
import 'package:cipher_schools/common/widgets/custom_button.dart';
import 'package:cipher_schools/features/home/widgets/best_course.dart';
import 'package:cipher_schools/features/home/widgets/creator_from.dart';
import 'package:cipher_schools/features/home/widgets/reviews_course.dart';
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

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 243, 245),
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
                  const Padding(
                    padding: EdgeInsets.only(right: 1),
                    child: Icon(CupertinoIcons.text_alignright),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Welcome to ',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'the Future ',
                      style: TextStyle(
                          fontSize: 35,
                          color: GlobalVariables.selectedNavBarColor,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: 'of Learning!',
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  // Wrap RichText and AnimatedTextKit with a Column
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                          text: 'Start Learning by best creators for ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ]),
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'absolutely Free',
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: GlobalVariables.selectedNavBarColor,
                            fontWeight: FontWeight.w400,
                          ),
                          speed: const Duration(milliseconds: 200),
                          cursor: ' |',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SignedSpacingRow(
                      spacing: -16.0,
                      stackingOrder: StackingOrder.firstOnTop,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 77, 76, 84),
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://www.freepnglogos.com/uploads/man-png/man-png-transparent-images-png-only-0.png'),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 77, 76, 84),
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://www.freepnglogos.com/uploads/man-png/man-your-company-formations-formation-registrations-10.png'),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 77, 76, 84),
                            radius: 18,
                            backgroundImage: NetworkImage(
                                'https://www.freepnglogos.com/uploads/man-png/man-png-transparent-images-png-only-8.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          textAlign: TextAlign.start,
                          '50+',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          'Mentors',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 35,
                  width: 0.5,
                  color: GlobalVariables.hintColor,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                ),
                Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.start,
                      '4.8/5',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Stars(rating: 4.6),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Ratings',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: 'Start Learning Now',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 4 / 3,
              ),
              items: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: const SingleProduct(
                    name: 'Earn CipherPoints',
                    description:
                        'Earn exclusive awards by developing skills with us',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: const SingleProduct(
                    name: 'Q-rated content',
                    description:
                        'Unlock quality content with our Q-rated content',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: const SingleProduct(
                    name: 'Projects',
                    description:
                        'Get the hands-on experience with real-time projects guided by expert mentors!',
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: const SingleProduct(
                    name: 'Mentors',
                    description:
                        'Earn exclusive awards by developing skills with us',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        '15K+',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.selectedNavBarColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Students',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      Text(
                        '10K+',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.selectedNavBarColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Certificates delivered',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        '450K+',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.selectedNavBarColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Streamed minutes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '12TB+',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: GlobalVariables.selectedNavBarColor),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Content streamed in last 60 days',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        '50+',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.selectedNavBarColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Creators',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: const [
                      Text(
                        '110+',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.selectedNavBarColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Programs available',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: const DecorationImage(
                  image: AssetImage("assets/images/w1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black12,
                            Colors.black87,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Unlock your learning potential with CipherSchools',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Best platform for the students',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'For Students',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.school_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 250,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
                image: const DecorationImage(
                  image: AssetImage("assets/images/w2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black12,
                            Colors.black87,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Empowering students to open their minds to utmost knowledge',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Be the mentor you never had',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'For Creators',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.person_add_alt_1_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: GlobalVariables.discordBgColor,
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Students LIVE Feedback ',
                            style: TextStyle(
                              color: GlobalVariables.selectedNavBarColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ReviewsCourse(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Creators From',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CreatorsFrom(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Best are here',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            const BestHereButton(),
            const SizedBox(
              height: 50,
            ),
            const BestGridB(),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Our Expert Mentors',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: const [
                    SingleUser(
                        name: 'Satyam',
                        comapany: 'Microsoft',
                        image: 'assets/images/Satyam-Microsoft.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Shreyas',
                        comapany: 'Paypal',
                        image: 'assets/images/Shreyas-PayPal.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'anurag',
                        comapany: 'Coding mentor',
                        image: 'assets/images/Anurag-Coding_Mentor.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Aditya',
                        comapany: '100 ms',
                        image: 'assets/images/Aditya-100ms.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Aman',
                        comapany: 'Amazon',
                        image: 'assets/images/Aman-Amazon.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Ayushi',
                        comapany: 'Walmart',
                        image: 'assets/images/Ayushi-Walmart.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Harshit',
                        comapany: 'Coding mentor',
                        image: 'assets/images/Harshit-Coding_Mentor.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Harshit',
                        comapany: 'Swiggy',
                        image: 'assets/images/Harshit-Swiggy.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Rajan',
                        comapany: 'Coding mentor',
                        image: 'assets/images/Rajan-Coding_Mentor.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Sagar',
                        comapany: 'Adobe',
                        image: 'assets/images/Sagar-Adobe.jpg'),
                    SizedBox(width: 10),
                    SingleUser(
                        name: 'Sanjeev',
                        comapany: 'Oracle',
                        image: 'assets/images/Sanjeev-Oracle.jpg'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: GlobalVariables.discordBgColor,
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Join our Community on ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              WidgetSpan(
                                child: Icon(
                                  Icons
                                      .discord, // Replace with your desired icon
                                  size: 29,
                                  color: GlobalVariables.thirdColor,
                                ),
                                alignment: PlaceholderAlignment.middle,
                                baseline: TextBaseline.alphabetic,
                              ),
                              TextSpan(
                                text: ' Discord ',
                                style: TextStyle(
                                  fontSize: 27,
                                  color: GlobalVariables.thirdColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Come together and make a difference! Come together and make a difference! Join our community for an interactive learning experience!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: GlobalVariables.thirdColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Join Discord',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.discord_sharp,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 240,
                          decoration: const BoxDecoration(
                            color: GlobalVariables.thirdColor,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(240)),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 20,
                        right: 20,
                        child: Image.asset(
                          'assets/images/discord.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: Image.asset('assets/images/Ciphertextimg.jpg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Cipherschools is a bootstrapped educational video streaming platform in India that is connecting passionate unskilled students to skilled Industry experts to fulfill their career dreams.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: InkWell(
                    onTap: () {
                      final Uri params = Uri(
                        scheme: 'mailto',
                        path: 'support@cipherschools.com',
                      );
                      launchUrl(params);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.mail_outline),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'support@cipherschools.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                          textAlign: TextAlign.justify,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Popular Courses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    buildRowWidget('Data Science'),
                    buildRowWidget('Programming'),
                    buildRowWidget('Artificial Intelligence'),
                    buildRowWidget('Machine Learning'),
                    buildRowWidget('Web Development'),
                    buildRowWidget('Game Development'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Company Info',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    buildRowWidget('Home'),
                    buildRowWidget('Blog'),
                    buildRowWidget('Why We?'),
                    buildRowWidget('Site Map'),
                    buildRowWidget('Privacy Policy'),
                    buildRowWidget('Terms & Conditions'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: GlobalVariables.greyBackgroundCOlor,
              width: MediaQuery.of(context).size.width,
              height: 190,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '© 2020 CipherSchools • All Rights Reserved',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.discord),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(CommunityMaterialIcons.instagram),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(CommunityMaterialIcons.linkedin),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(CommunityMaterialIcons.github),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(CommunityMaterialIcons.facebook),
                      SizedBox(
                        width: 13,
                      ),
                      Icon(CommunityMaterialIcons.twitter),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildRowWidget(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        const Icon(
          Icons.arrow_forward_sharp,
          size: 18,
          color: Colors.black,
        ),
        const SizedBox(width: 3),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
