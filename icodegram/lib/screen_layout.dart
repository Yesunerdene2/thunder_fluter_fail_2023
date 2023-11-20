import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/add_post_screen.dart';
import 'package:icodegram/add_profile_screen.dart';
import 'package:icodegram/home_screeen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController = PageController();
  }

  @override
  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int age) {
    setState(() {
      _page = _page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const <Widget>[
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _page == 0 ? Colors.orange : Colors.white,
              ),
              backgroundColor: Colors.black,
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: _page == 1 ? Colors.black : Colors.white,
              ),
              backgroundColor: Colors.white,
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _page == 2 ? Colors.black : Colors.white,
              ),
              backgroundColor: Colors.white,
              label: ''),
        ],
      ),
    );
  }
}
