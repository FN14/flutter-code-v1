import 'package:flutter/material.dart';
import '30_zbutton_colorfull.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Button Belah Ketupat")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorFullButton(Colors.pink, Colors.blue, Icons.adb),
              ColorFullButton(Colors.amber, Colors.red, Icons.comment),
              ColorFullButton(Colors.green, Colors.purple, Icons.computer),
              ColorFullButton(Colors.blue, Colors.yellow, Icons.contact_phone),
            ],
          ),
        ),
      ),
    );
  }
}
