import 'package:flutter/material.dart';

void main() {
  runApp(const CounterColorApp());
}

class CounterColorApp extends StatefulWidget {
  const CounterColorApp({super.key});

  @override
  State<CounterColorApp> createState() => _CounterColorAppState();
}

class _CounterColorAppState extends State<CounterColorApp> {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ContainerColorApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: (colorChange) ? Colors.purpleAccent : Colors.pinkAccent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (colorChange) {
              colorChange = false;
            } else {
              colorChange = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
