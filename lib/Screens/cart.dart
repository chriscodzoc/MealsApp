import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final double price;
  final String name;
  final int count;
  final int url;

  CartScreen({Key? key, required this.price, required this.name, required this.count, required this.url}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
