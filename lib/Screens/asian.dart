import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class asian extends StatefulWidget {
  const asian({super.key});

  @override
  State<asian> createState() => _asianState();
}

class _asianState extends State<asian> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 40, 12),
        title: const Text("Asian"),
        leading: IconButton(
          icon: Icon(Icons.backspace),
          onPressed: () {
            Navigator.of(context).pushNamed('home');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                items(
                    "https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/masala-dosa-recipe-1-1024x1536.jpg",
                    Icons.abc,
                    "Masala Dosa"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: items(
                      "https://www.vegrecipesofindia.com/wp-content/uploads/2013/11/samosa-0-1152x1536.jpg",
                      Icons.abc,
                      "Samosa"),
                ),
                items(
                    "https://www.vegrecipesofindia.com/wp-content/uploads/2020/01/paneer-butter-masala-1-1152x1536.jpg",
                    Icons.abc,
                    "Paneer"),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

Widget items(String img, IconData iconData, String PName) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
        ),
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(PName),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(right: 15,bottom: 0,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                fixedSize: MaterialStateProperty.all(Size(100, 40)),
              ),
              onPressed: (() {
                // Navigator.of(context).pushNamed('breakfast');
              }),
              child: Text('Buy Now')),
        ),
      ),
    ],
  );
}
