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
            "Netfilx Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00357490-rdvsxpgqnu-portrait.jpg",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
