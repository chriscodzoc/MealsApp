import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class german extends StatefulWidget {
  const german({super.key});

  @override
  State<german> createState() => _germanState();
}

class _germanState extends State<german> {
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
