import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final int x = -10;
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Extension")),
      body: Center(
        child: Text(
          "bilangan:" & x.negate().toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

extension IntegerExtension on int {
  int negate() => -1 * this;
}

extension StringExtension on String {
  String operator &(String other) => this + " " + other;
}
