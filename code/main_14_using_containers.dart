import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final longText =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt "
      "ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo "
      "dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Using Containers"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
            //transform: Matrix4.rotationZ(0.5),
            //color: Colors.yellow,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Colors.grey, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  spreadRadius: 2,
                  offset: Offset(40, 40), // Shadow position
                ),
              ],
            ),
            //height: 200,
            child: Text(
              longText,
              textAlign: TextAlign.justify,
            )),
      ),
    );
  }
}
