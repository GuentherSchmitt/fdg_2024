// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _counter = 0;
  double sliderValue = 0.7;
  bool switchValue = false;
  bool? checkboxValue = false;

  void onButtonPressed() {
    print("button was pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue, brightness: Brightness.dark)),
      theme: ThemeData(
          sliderTheme: const SliderThemeData(
              activeTrackColor: Colors.lightGreen, thumbColor: Colors.green),
          switchTheme: const SwitchThemeData(
            thumbColor: WidgetStatePropertyAll(Colors.red),
            trackColor: WidgetStatePropertyAll(Colors.yellow),
            trackOutlineColor: WidgetStatePropertyAll(Colors.green),
            trackOutlineWidth: WidgetStatePropertyAll(4),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green.shade100,
              side: const BorderSide(color: Colors.green, width: 2),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade100,
                  foregroundColor: Colors.green.shade700,
                  elevation: 20)),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            // primary: Colors.orange,
            // primaryContainer: Colors.pink,
            // onPrimary: Colors.green,
            // surface: Colors.grey.shade300,
            // shadow: Colors.red,
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Test ThemeData and ColorScheme"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'FloatingActionButton was pushed $_counter times.',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: onButtonPressed, child: const Text("TextButton")),
              const SizedBox(height: 10),
              OutlinedButton(
                  onPressed: onButtonPressed,
                  child: const Text("OutlinedButton")),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: onButtonPressed,
                  child: const Text("ElevatedButton")),
              const SizedBox(height: 10),
              IconButton(
                  onPressed: onButtonPressed,
                  icon: const Icon(Icons.pedal_bike)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OkButton(
                    onPressed: () {
                      print("OK pressed");
                    },
                  ),
                  CancelButton(
                    onPressed: () {
                      print("Cancel pressed");
                    },
                  ),
                ],
              ),
              Slider(
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  }),
              Slider(
                  activeColor: Colors.black,
                  thumbColor: Colors.red,
                  inactiveColor: Colors.amber,
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  }),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                  Switch(
                    value: !switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = !value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    tristate: true,
                    value: checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue = value;
                      });
                    },
                  ),
                  Checkbox(
                    tristate: true,
                    value: true,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue = true;
                      });
                    },
                  ),
                  Checkbox(
                    tristate: true,
                    value: null,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue = null;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                margin: const EdgeInsets.all(8),
                elevation: 10,
                child: ListTile(
                  title: const Text("Max Mustermann"),
                  subtitle: const Text("Berlin"),
                  leading: const Icon(Icons.person, size: 50),
                  trailing: IconButton(
                    icon: const Icon(Icons.phone),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class OkButton extends OutlinedButton {
  OkButton({super.key, required super.onPressed})
      : super(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.white),
            child: const Text("Ok"));
}

class CancelButton extends OutlinedButton {
  CancelButton({super.key, required super.onPressed})
      : super(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: const Text("Cancel"));
}
