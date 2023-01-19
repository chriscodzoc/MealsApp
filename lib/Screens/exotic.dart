import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class exotic extends StatefulWidget {
  const exotic({super.key});

  @override
  State<exotic> createState() => _exoticState();
}

class _exoticState extends State<exotic> {
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
