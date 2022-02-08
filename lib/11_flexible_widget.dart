import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flexible Layout")),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Color.fromARGB(255, 202, 144, 144),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Color.fromARGB(255, 187, 119, 31),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Color.fromARGB(255, 53, 13, 13),
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child:
                    Container(margin: EdgeInsets.all(5), color: Colors.blue)),
            Flexible(
                flex: 1,
                child:
                    Container(margin: EdgeInsets.all(5), color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
