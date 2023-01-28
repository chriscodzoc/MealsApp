import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/settings.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int selectedindex = 0;
List<Widget> pages = [Home(), Settings()];

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: selectedindex,
        circleColor: Color.fromARGB(255, 255, 0, 0),
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: [
          TabData(
            icon: Icons.home,
            iconSize: 25, // Optional
            fontSize: 12, // Optional
          ),
          TabData(icon: Icons.settings),
        ],
        onTabChangedListener: (int position) {
          setState(() {
            selectedindex = position;
          });
        },
      ),
    );
  }
}
