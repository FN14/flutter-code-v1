import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Container Widget")),
        body: Container(
          color: Colors.red,
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(bottom: 20),
          margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
          child: Container(
            // color: Colors.blue,
            // margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
          ),
        ),
      ),
    );
  }
}
