import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/Screens/asian.dart';
import 'package:myapp/Screens/breakfast.dart';
import 'package:myapp/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainscaf(),
      routes: {
        'asian': (context) {
          return asian();
        },
        'home': (context) {
          return Home();
        },
        'breakfast': (context) {
          return breakfast();
        }
      },
    );
  }
}

class Mainscaf extends StatefulWidget {
  const Mainscaf({super.key});

  @override
  State<Mainscaf> createState() => _MainscafState();
}

class _MainscafState extends State<Mainscaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}
