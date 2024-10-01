import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 500,
                color: Colors.black,
                //alignment: 100;
              ),
              Column(
                children: [
                  const SizedBox(
                    //width: 80,
                    height: 60,
                  ),
                  Container(
                    width: 330,
                    height: 60,
                    color: Colors.orange,
                  ),
                  Container(
                      width: 330,
                      height: 60,
                      color: Colors.white,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/e/e4/Spinning_Ashoka_Chakra.gif")),
                  Container(
                    width: 330,
                    height: 60,
                    color: Colors.green,
                  ),
                  /*const SizedBox(
                    width: 120,
                    //height: 10,
                  ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
