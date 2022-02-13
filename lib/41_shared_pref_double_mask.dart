import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controllerTxt = TextEditingController(text: "No Name");
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controllerTxt.text);
    pref.setBool("ison", isOn);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Preferences"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controllerTxt,
              ),
              Switch(
                value: isOn,
                onChanged: (val) {
                  setState(() {
                    isOn = val;
                  });
                },
              ),
              RaisedButton(
                  child: Text("Save"),
                  onPressed: () {
                    saveData();
                  }),
              RaisedButton(
                  child: Text("Load"),
                  onPressed: () {
                    getNama().then((value) {
                      controllerTxt.text = value;
                      setState(() {});
                    });
                    getOn().then((value) {
                      isOn = value;
                      setState(() {});
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
