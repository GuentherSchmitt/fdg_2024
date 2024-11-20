import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text("Using images"),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/logo_fdg_neu_freigestellt.png",
              color: Colors.white,
            ),
          ),
        ),

        // SingleChildScrollView allows vertical scrolling
        body: SingleChildScrollView(
          child: Column(
            children: [
              // picture from GitHub works in Chrome and Android
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                  "https://fdg2324.github.io/web/fdg_leitbild.png",
                  width: 700,
                  //height: 400,
                  //fit: BoxFit.none
                ),
              ),

              // picture from fdg-ab.de does not work on Chrome, but it works in Android
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Image.network(
              //     "https://fdg-ab.de/wp-content/uploads/2022/08/Bildschirmfoto-2022-08-10-um-13.07.47-1024x630.png",
              //     width: 408,
              //   ),
              // ),
              //
              // // picture from asset works in Chrome and Android
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Image.asset(
              //     "assets/images/Bildschirmfoto-2022-08-10-um-13.07.47-1024x630.png",
              //     width: 408,
              //   ),
              // ),

              // new from 19-Nov-2024: tests with rotated images and rounded corners 
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Transform(
                  transform: Matrix4.rotationZ(0.4),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/snoopy_laptop.jpg",
                    width: 200,
                  ),
                ),
              ),

              // picture from asset works in Chrome and Android
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.elliptical(30, 40)),
                  child: Image.asset(
                    "assets/images/snoopy_laptop.jpg",
                    width: 150,
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 60),
                  const CircleAvatar(
                    radius: 40,
                      foregroundImage: AssetImage("assets/images/GS.jpg")),
                  const SizedBox(width: 60),
                  CircleAvatar(
                    radius: 40,
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.yellow,
                      //child: Text("GS")),
                      child: Image.asset("assets/images/GS.jpg")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
