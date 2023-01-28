import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp/Screens/asian.dart';
import 'package:myapp/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  pagetransition(index) {
    setState(() {
      currentPage = index;
    });
    if (currentPage==0){
      Navigator.of(context).pushNamed('home');
    }
    else{
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const settings()),
  );
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(244, 141, 41, 2),
          title: Text('Foodies'),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.orange),
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('asian');
                      }),
                      child: Text('Asian')),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.green),
                        fixedSize: MaterialStateProperty.all(Size(120, 80)),
                      ),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('breakfast');
                      }),
                      child: Text('Breakfast')),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('exotic');
                      }),
                      child: Text('Exotic')),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.grey),
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('german');
                      }),
                      child: Text('German')),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.red),
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('hamburgers');
                      }),
                      child: Text('Hambegers')),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.purple),
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('itallian');
                      }),
                      child: Text('Italian')),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green),
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('light');
                      }),
                      child: Text('Light')),
                  ElevatedButton(
                      style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(Size(120, 80))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed('quick');
                      }),
                      child: Text('Quick')),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: 0,
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
          onTabChangedListener: (index) => pagetransition(index),
        ));
  }
}
