import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Textfield Decoration Widget")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  /*prefix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),*/
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  //prefixText: "Name : ",
                  prefixStyle: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                  labelText: "Nama Lengkap :",
                  hintText: "Input Nama Anda ",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
                //obscureText: true,
              ),
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
