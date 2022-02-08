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
  List<Widget> listWidget = [];
  int counter = 1;

  /*_MyAppState() {
    for (int i = 0; i < 15; i++) {
      listWidget.add(Text(
        "Data ke " + i.toString(),
        style: TextStyle(fontSize: 25),
      ));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List and Listview")),
        body: ListView(
          children: [
            Row(
              // space around artinya space nya di bagi rata
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        listWidget.add(Text(
                          "Data ke " + counter.toString(),
                          style: TextStyle(fontSize: 20),
                        ));
                        counter++;
                      });
                    },
                    child: Text("Tambah Data "),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        listWidget.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus Data"),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listWidget,
            )
          ],
        ),
      ),
    );
  }
}
