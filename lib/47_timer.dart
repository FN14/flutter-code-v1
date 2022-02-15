import 'dart:ui';
import 'dart:async';
import 'package:flutter/cupertino.dart';
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
  int counter = 0;
  bool isBlack = false;
  bool isStop = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                    color: (isBlack) ? Colors.black : Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text("Ubah Warna 5 Detik Kemudian"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
                child: Text("Ubah Warna Secara Langsung"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  counter = 0;
                  isStop = false;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: Text("Start Timer"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  isStop = true;
                },
                child: Text("Stop Timer"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
