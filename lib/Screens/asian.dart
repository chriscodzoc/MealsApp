import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class asian extends StatefulWidget {
  asian({super.key});

  @override
  State<asian> createState() => _asianState();
}

class _asianState extends State<asian> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'price': 20.0,
        'img':
            "https://www.vegrecipesofindia.com/wp-content/uploads/2021/06/masala-dosa-recipe-1-1024x1536.jpg",
        'icon': Icons.abc,
        'name': "Masala Dosa",
      },
      {
        'price': 30.0,
        'img':
            "https://www.vegrecipesofindia.com/wp-content/uploads/2013/11/samosa-0-1152x1536.jpg",
        'icon': Icons.abc,
        'name': "Samosa",
      },
      {
        'price': 40.0,
        'img':
            "https://www.vegrecipesofindia.com/wp-content/uploads/2020/01/paneer-butter-masala-1-1152x1536.jpg",
        'icon': Icons.abc,
        'name': "Paneer",
      },
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 40, 12),
        title: const Text("Asian"),
        leading: IconButton(
          icon: Icon(Icons.backspace),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
          itemCount: data.length,
          padding: const EdgeInsets.all(13),
          itemBuilder: (context, index) {
            return items(data[index]['img'], data[index]['icon'],
                data[index]['name'], data[index]['price']);
          }),
    ));
  }
}

Widget items(String img, IconData iconData, String pName, double price) {
  return Padding(
    padding: const EdgeInsets.all(13.0),
    child: Stack(
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
                      child: Text(
                        pName,
                        style: GoogleFonts.lato(
                            fontSize: 18, color: Colors.amber.shade50),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.green),
                  fixedSize: MaterialStateProperty.all(Size(100, 40)),
                ),
                onPressed: (() {
                  // Navigator.of(context).pushNamed('breakfast');
                }),
                child: Text('Buy Now')),
          ),
        ),
      ],
    ),
  );
}
