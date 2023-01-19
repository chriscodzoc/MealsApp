import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class italian extends StatefulWidget {
  const italian({super.key});

  @override
  State<italian> createState() => _italianState();
}

class _italianState extends State<italian> {
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
