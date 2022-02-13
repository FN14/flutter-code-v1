import 'package:flutter/material.dart';
import 'package:flutter_chapter01/37_zhttp_get_user_model.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Api Demo")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers("1").then((value) {
                    output = "";
                    for (int i = 0; i < value.length; i++) {
                      output = output + "[" + value[i].name + "]";
                    }
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
