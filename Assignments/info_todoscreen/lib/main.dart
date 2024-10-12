import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String? myName;
  String? myCompany;

  List<Map> infoList = [];
  @override
  Widget build(BuildContext context) {
    var nameController;
    var companyController;
    var index;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Info",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Name ",
                  hintStyle: TextStyle(
                    fontSize: 23,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Value : $val");
                },
                onEditingComplete: () {
                  print("Editing completed");
                },
                onSubmitted: (value) {
                  print("Value submitted: $value");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: companyController,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter Company Name",
                  hintStyle: TextStyle(
                    fontSize: 23,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Value : $val");
                },
                onEditingComplete: () {
                  print("Editing completed");
                },
                onSubmitted: (value) {
                  print("Value submitted: $value");
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print("add data");
                myCompany = companyController.text.trim;
                myName = nameController.text.trim;
                print("My Name : $myName");
                print("My Company Name : $myCompany");
                if (myName! == "") {
                  infoList.add(
                      {"Name": nameController, "Company": companyController});
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListView.builder(
                physics: ScrollPhysics(),
                itemCount: infoList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Text(
                    //"Name:${infoList[index]["Name"]}",
                    "Name : $myName \nCompany Name : $myCompany",
                    style: const TextStyle(
                      fontSize: 23,
                    ),
                  );
                }),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Text(
                //"Name : $myName \nCompany Name : $myCompany",
                "Name:${infoList[index]["Name"]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              /*Container(
              child:Text(
                //"Name : $myName \nCompany Name : $myCompany",
                "Name:${infoList[index]["Company"]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}
