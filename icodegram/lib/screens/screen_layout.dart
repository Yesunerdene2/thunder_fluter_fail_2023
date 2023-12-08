import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_post_screen.dart';
import 'add_profile_screen.dart';
import 'home_screeen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
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
            AddPostScreen(), ProfileScreen(),
            // AddPhoto(),
            // ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.home_filled,
                  color: _page == 0 ? Colors.orange : Colors.white,
                  size: 26,
                ),
                Padding(padding: EdgeInsets.only(top: 2)),
                Icon(
                  Icons.circle,
                  color: _page == 0 ? Colors.orange : Colors.black,
                  size: 6,
                )
              ],
            ),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.add_box_outlined,
                  color: _page == 1 ? Colors.orange : Colors.white,
                  size: 26,
                ),
                Padding(padding: EdgeInsets.only(top: 2)),
                Icon(
                  Icons.circle,
                  color: _page == 1 ? Colors.orange : Colors.black,
                  size: 6,
                )
              ],
            ),
            backgroundColor: Colors.white,
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.person,
                  color: _page == 2 ? Colors.orange : Colors.white,
                  size: 26,
                ),
                Padding(padding: EdgeInsets.only(top: 2)),
                Icon(
                  Icons.circle,
                  color: _page == 2 ? Colors.orange : Colors.black,
                  size: 6,
                )
              ],
            ),
            backgroundColor: Colors.white,
            label: '',
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:icodegram/screens/add_post_screen.dart';
// import 'package:icodegram/screens/add_profile_screen.dart';
// import 'package:icodegram/screens/home_screeen.dart';
//
// class ScreenLayout extends StatefulWidget {
//   const ScreenLayout({super.key});
//
//   @override
//   State<ScreenLayout> createState() => _ScreenLayoutState();
// }
//
// class _ScreenLayoutState extends State<ScreenLayout> {
//   int _page = 0;
//   late PageController pageController;
//   @override
//   void initState() {
//     super.initState();
//     pageController = PageController();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     pageController = PageController();
//   }
//
//   @override
//   void navigationTapped(int page) {
//     pageController.jumpToPage(page);
//   }
//
//   void onPageChanged(int age) {
//     setState(() {
//       _page = page;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: PageView(
//           physics: NeverScrollableScrollPhysics(),
//           controller: pageController,
//           onPageChanged: onPageChanged,
//           children: const <Widget>[
//             HomeScreen(),
//             AddPostScreen(),
//             ProfileScreen(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: CupertinoTabBar(
//         backgroundColor: Colors.black,
//         onTap: navigationTapped,
//         items: [
//           BottomNavigationBarItem(
//               icon: Column(
//                 children: [
//                   Icon(
//                     Icons.home,
//                     color: _page == 0 ? Colors.white : Colors.yellow[900],
//                     size: 26,
//                   ),
//                   Padding(padding: EdgeInsets.only(top: 2)),
//                   Icon(Icons.circle, color: _page == 0 ? Colors.orange: Colors.black,
//                   size: 6,)
//
//                 ],
//               ),
//               backgroundColor: Colors.black,
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.add_box_outlined,
//                 color: _page == 1 ? Colors.black : Colors.white,
//               ),
//               backgroundColor: Colors.white,
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person,
//                 color: _page == 2 ? Colors.black : Colors.white,
//               ),
//               backgroundColor: Colors.white,
//               label: ''),
//         ],
//       ),
//     );
//   }
// }
