import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarColor());
}

class AppBarColor extends StatefulWidget {
  const AppBarColor({super.key});

  @override
  State<AppBarColor> createState() => _AppBarColorState();
}

class _AppBarColorState extends State<AppBarColor> {
  bool changeColor = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBarColorToggle"),
          centerTitle: true,
          backgroundColor: changeColor ? Colors.cyanAccent : Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.lightBlueAccent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (changeColor == true) {
              changeColor = false;
            } else {
              changeColor = true;
            }
            setState(() {});
          },
          child: const Text("Toggle"),
        ),
      ),
    );
  }
}
