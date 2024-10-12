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
          title: const Text(
            "Column",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://m.media-amazon.com/images/M/MV5BZmFhZTNlNzctZGQzZi00MTA3LThiNjMtYWQzNjUzMjNjZjA3XkEyXkFqcGc@._V1_.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Image.network(
                "https://hips.hearstapps.com/hmg-prod/images/best-action-movies-netflix-the-woman-king-64949b61c86b8.jpg?crop=1xw:1xh;center,top&resize=980:*",
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Image.network(
                  "https://m.media-amazon.com/images/M/MV5BN2IyYzI4YmQtNzBmMi00Mjg3LWI4NTMtNmZjNjk3YjIwZmJhXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Image.network(
                  "https://hips.hearstapps.com/hmg-prod/images/best-movies-on-netflix-right-now-the-adam-project-644053ba6404a.jpeg"),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
