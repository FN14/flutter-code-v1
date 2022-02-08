import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.green,
        //appBar: AppBar(title: Text("Card Widget")),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCart(Icons.account_box, "Account Box"),
              buildCart(Icons.adb, "Serangga Android"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCart(IconData iconData, String valtxt) {
    return Card(
      elevation: 5,
      child: Row(children: [
        Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            )),
        Text(valtxt),
      ]),
    );
  }
}
