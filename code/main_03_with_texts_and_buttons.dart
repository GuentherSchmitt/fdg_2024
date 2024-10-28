// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void onButtonPressed() {
    print("button was pressed");
  }

  @override
  Widget build(BuildContext context) {

    // some tests with Color constructors and Colors class 
    //Color textColor =  new Color(0xFFFF9000);    // new is no longer needed since Dart 2.0
    //Color textColor =  Color(0xFFFF9000);
    //Color textColor2 = Color.fromARGB(0xFF, 0xFF, 0x90, 0);
    //Color textColor2 = Color.fromARGB(255, 255, 144, 0);
    //Color textColor2 = Colors.red.shade200;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hello World !',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
              const Text("Hello"),

              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    maximumSize: Size(250, 50),
                    backgroundColor: Colors.yellow,
                    // the code for shape and side was found under 
                    // https://stackoverflow.com/questions/64322596/how-to-achieve-rounded-corners-on-new-outlinedbutton-widget-in-flutter
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    //side: BorderSide(width: 3, color: Colors.red)
                  ),
                  onPressed: () {
                    print("in anonymous function");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.download),
                      SizedBox(width: 20),
                      Text("press me!!"),
                    ],
                  )),

              // solution for exercise: OK and Cancel button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        print("OK was pressed");
                      },
                      child: Text("OK")),
                  OutlinedButton(
                      onPressed: () {
                        print("Cancel was pressed");
                      },
                      child: Text("Cancel")),
                ],
              ),

              // more button types:
              TextButton(onPressed: onButtonPressed, child: Text("TextButton")),
              OutlinedButton(
                  onPressed: onButtonPressed, child: Text("OutlinedButton")),
              ElevatedButton(
                  onPressed: onButtonPressed, child: Text("ElevatedButton")),
              IconButton(
                  onPressed: onButtonPressed, icon: Icon(Icons.pedal_bike)),

              // solution for last exercise: Elevated button with big elevation
              ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 20),
                  onPressed: onButtonPressed,
                  child: Text("ElevatedButton")),
            ],
          ),
        ),
      ),
    );
  }
}
