import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Hello World")),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 80,
                child: const Text(
                  "Alhamdulillah, Saya sedang belajar pemrograman flutter ",
                  //overflow: TextOverflow.ellipsis,
                ))),
      ),
    );
  }
}
