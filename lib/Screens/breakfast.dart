import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class breakfast extends StatefulWidget {
  const breakfast({super.key});

  @override
  State<breakfast> createState() => _breakfastState();
}

class _breakfastState extends State<breakfast> {
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
