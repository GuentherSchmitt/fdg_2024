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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.network(
                  "https://fdg-ab.de/wp-content/uploads/2022/08/Bildschirmfoto-2022-08-10-um-13.07.47-1024x630.png",
                  width: 408,
                ),
              ),

              // picture from asset works in Chrome and Android
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/Bildschirmfoto-2022-08-10-um-13.07.47-1024x630.png",
                  width: 408,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
