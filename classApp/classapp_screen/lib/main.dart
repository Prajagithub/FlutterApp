import 'package:flutter/material.dart';

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

int count = 0;

class _ScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: Colors.red,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.red,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.pink[50],
            child: Image.network(
              "https://png.pngtree.com/png-vector/20230808/ourmid/pngtree-track-shoes-png-image_6880451.png",
              width: 800,
              height: 300,
              //color: Colors.pink[200],
            ),
          ),
          const SizedBox(
            height: 10,
            width: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: const Text(
              "Nike Air Force 1 07!!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),

          const SizedBox(
            height: 18,
            width: 10,
          ),
          /*Container(
            padding: const EdgeInsets.only(
              right: 10,
            ),
          ),*/
          //Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0)
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                horizontal: 8,
              )),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                child: const Text(
                  "SHOES",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                child: const Text(
                  "FOOTEWEAR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 18,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Text(
              "Nike Court Vision Low Men's Shoes Size. This iteration puts a fresh Spin on the hoopsclassic with crisp leather,eraechoing '80s construction and reflective design swoosh logos.Nike shoes designed for Athletes and come in a varity of styles for different sports",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(
                horizontal: 10,
              )),
              const Text(
                "Quantity",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),

              /*FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
              ),*/
              GestureDetector(
                onTap: () {
                  count--;
                  print("click on remove");
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: Colors.grey[50],
                  border: Border.all(),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${count}",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  count++;
                  print("click on add");
                  setState(() {});
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                child: const Text(
                  "PURCHASE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 1+8,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
//backgroundColor: Colors.pink[200],
    );
  }
}
