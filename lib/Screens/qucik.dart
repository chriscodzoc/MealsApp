import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class quick extends StatefulWidget {
  const quick({super.key});

  @override
  State<quick> createState() => _quickState();
}

class _quickState extends State<quick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: IconButton(
          icon: Icon(Icons.backspace),
          onPressed: () {
            Navigator.of(context).pushNamed('home');
          },
        ),
      )),
    );
  }
}
