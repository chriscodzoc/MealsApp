import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/Screens/asian.dart';
import 'package:myapp/Screens/bottonnav.dart';
import 'package:myapp/Screens/breakfast.dart';
import 'package:myapp/home.dart';
import 'package:myapp/settings.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const BottomNav(),
        'asian': (context) => asian(),
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
