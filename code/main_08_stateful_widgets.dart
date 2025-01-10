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
  double sliderValue = 0;
  bool switchValue = true;
  bool? checkboxValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                  min: -10,
                  max: 10,
                  // label is only shown during movement of the
                  // slider and when divisions is defined !
                  label: "$sliderValue",
                  divisions: 10,
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                      print(sliderValue);
                    });
                  }),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    value: switchValue,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  Text(
                    switchValue ? "ON" : "OFF",
                    style: const TextStyle(fontSize: 22),
                  ),
                  if (switchValue) const Text("hello"),
                ],
              ),
              Checkbox(
                splashRadius: 60,
                activeColor: Colors.red,
                checkColor: Colors.blue,
                tristate: true,
                value: checkboxValue,
                onChanged: (value) {
                  setState(() {
                    checkboxValue = value;
                    print(checkboxValue);
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    tristate: true,
                    value: checkboxValue,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue = value;
                        print("checkBoxValue is $checkboxValue");
                      });
                    },
                  ),

                  // next line would show a very simple text display (true, false, null)
                  //Text(checkboxValue.toString()),

                  if (checkboxValue == true) const Text("SELECTED"),
                  if (checkboxValue == false) const Text("UNSELECTED"),
                  if (checkboxValue == null) const Text("UNDEF"),
                ],
              ),
              ListTile(
                dense: true,
                title: const Text("Fritz Fischer"),
                subtitle: const Text("Großostheim"),
                leading: const Icon(Icons.person, size: 50),
                trailing: IconButton(
                  icon: const Icon(Icons.phone),
                  iconSize: 30,
                  onPressed: () {
                    print("button clicked");
                  },
                ),
                tileColor: Colors.lightGreenAccent,
                onTap: () {
                  print("onTap");
                },
              ),
              Card(
                margin: const EdgeInsets.all(8),
                elevation: 10,
                child: ListTile(
                  title: const Text("Max Mustermann"),
                  subtitle: const Text("Großostheim"),
                  leading: const Icon(Icons.person, size: 50),
                  trailing: IconButton(
                    icon: const Icon(Icons.phone),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  tileColor: Colors.grey.shade200,
                ),
              ),
              Card(
                margin: const EdgeInsets.all(8),
                elevation: 10,
                child: CheckboxListTile(
                  tristate: true,
                  title: const Text("Select 3 years device protection"),
                  subtitle: const Text("Default is only 2 years."),
                  value: checkboxValue,
                  onChanged: (value) {
                    setState(() {
                      checkboxValue = value;
                    });
                  },
                  tileColor: Colors.yellow,
                  secondary: const Icon(Icons.calendar_month),
                  // with next line the checkbox is displayed on the left
                  controlAffinity: ListTileControlAffinity.platform,
                ),
              ),
              Card(
                margin: const EdgeInsets.all(8),
                elevation: 10,
                child: SwitchListTile(
                  value: switchValue,
                  title: const Text("USB-Debugging"),
                  subtitle:
                      const Text("Allow debugging when connected via USB"),
                  tileColor: Colors.lightBlue.shade100,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
