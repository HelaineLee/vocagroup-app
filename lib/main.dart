import 'package:flutter/material.dart';

const String background2 = 'assets/images/background2.png';

final List<String> langList = <String>['English', '한국어', 'Français', 'Русский'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Vocagroup'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 0,
            right: 0,
            child: Text(
              'Your Primary Language',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            left: 0,
            right: 0,
            child: const DropdownMenuExample(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 0,
            right: 0,
            child: Text(
              'Your Secondary Language',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            right: 0,
            child: const DropdownMenuExample(),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.7,
            left: 0,
            right: 0,
            child: Text(
              'Settings can be changed at any time.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              child: const Text('Start Now'),
            ),
          ),
        ],
      ),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = langList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: langList.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries:
          langList.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
      // menuStyle: ,
    );
  }
}
