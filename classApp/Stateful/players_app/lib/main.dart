import 'package:flutter/material.dart';

void main() {
  runApp(const PlayersApp());
}

class PlayersApp extends StatefulWidget {
  const PlayersApp({super.key});

  @override
  State<PlayersApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp> {
  int _index = 0;
  List<String> playerList = <String>[
    "https://i1.wp.com/thebridge.in/h-upload/2021/03/11/524-rohit-sharma-the-odi-cricket-phenomenon.webp?strip=all",
    "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/348100/348106.jpg",
    "https://i3.wp.com/cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg?strip=all",
    
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PlayersApp"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_index],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_index < playerList.length - 1) {
              _index++;
            } else {
              _index = 0;
            }
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
