import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State createState() => _ScreenState();
}

int val = 1;

class _ScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My cart",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.redAccent,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment:MainAxisAlignment.start
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.network(
                  "https://png.pngtree.com/png-vector/20230808/ourmid/pngtree-track-shoes-png-image_6880451.png",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 1,
                    ),
                    Text(
                      "Nike Shoes",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      //height: 20,
                      width: 300,
                      child: const Text(
                        "With iconic style and legendary comfort,on repeat.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          "\$570.00",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.remove,
                            size: 18,
                            weight: 5,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.amber,
                          ),
                          child: Text("$val"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
