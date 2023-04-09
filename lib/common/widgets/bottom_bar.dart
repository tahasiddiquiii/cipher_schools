import 'package:cipher_schools/constants/global_variables.dart';
import 'package:cipher_schools/features/courses/screens/courses_screen.dart';
import 'package:cipher_schools/features/home/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const CoursesScreen(),
    const Center(
      child: Text('trending page'),
    ),
    const Center(
      child: Text('Profile page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_page],
      bottomNavigationBar: Stack(
        children: [
          Positioned(
            bottom: 20,
            left: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: GlobalVariables.shadowcolorColor.withOpacity(0.2),
                    spreadRadius: 20,
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                  currentIndex: _page,
                  selectedItemColor: GlobalVariables.selectedNavBarColor,
                  unselectedItemColor: GlobalVariables.unselectedNavBarColor,
                  backgroundColor: GlobalVariables.backgroundColor,
                  iconSize: 24,
                  onTap: updatePage,
                  showUnselectedLabels: true,
                  items: [
                    // Home
                    BottomNavigationBarItem(
                      icon: Container(
                        width: bottomBarWidth,
                        child: const Icon(
                          Icons.home,
                        ),
                      ),
                      label: 'Home',
                    ),
                    // Account
                    BottomNavigationBarItem(
                      icon: Container(
                        width: bottomBarWidth,
                        child: const Icon(
                          Icons.menu_book,
                        ),
                      ),
                      label: 'Courses',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        width: bottomBarWidth,
                        child: const Icon(
                          CupertinoIcons.compass_fill,
                        ),
                      ),
                      label: 'Trending',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        width: bottomBarWidth,
                        child: const Icon(
                          Icons.person,
                        ),
                      ),
                      label: 'My Profile',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
