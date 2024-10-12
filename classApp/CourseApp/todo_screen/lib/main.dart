import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-do List",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(30),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  //Padding(padding: const EdgeInsets.all(15)),

                  /* const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 15.0,
                    ),
                  ),*/

                  Container(
                    height: 120,
                    width: 330,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(250, 232, 232, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //alignment: Alignment.center,
                            Container(
                              height: 80,
                              width: 60,
                              //alignment: Alignment.center,
                              //padding: EdgeInsets.only(left: 30),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            ),

                            //const SizedBox(
                            //width: 6,
                            //),

                            Expanded(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 76),
                                    child: const Text(
                                      "Lerem Ipsum is simply setting industry.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 76),
                                    //height: 100,
                                    width: 300,
                                    child: const Text(
                                      "Simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry standard dummy text ever since the 1500s",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w200,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                            ),
                            Text(
                              "9 Octo 2024",
                              style: TextStyle(
                                fontSize: 7,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.edit,
                              color: Color.fromRGBO(0, 139, 148, 1),
                              size: 11,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.delete,
                              size: 11,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            SizedBox(
                              width: 6,
                              height: 3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 135,
                    //width: 40,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
