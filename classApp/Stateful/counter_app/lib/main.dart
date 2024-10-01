import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CounterApp"),
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(
          child: Container(
            //height: 40,
            //width: 40,
            //color: Colors.grey,
            child: Text("$count"),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
