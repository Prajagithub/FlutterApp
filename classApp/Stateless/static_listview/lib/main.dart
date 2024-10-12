import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width : ${MediaQuery.of(context).size.width}");
    print("Device height : ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg",
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Must",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
              "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg",
            ),
            GestureDetector(
              onTap: () {
                print("Pressed me");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                  "Press Me",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
