import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";
  // methode anonymouse digunakan jika method tersebut tidak di gunakan di tempat yang lain,
  // hanya untuk tombol itu saja.

  void btnTekan() {
    setState(() {
      message = "Tombol sudah ditekan";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                // ini contoh anonymouse method, bentuk nya () { }
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah ditekan Oleh method anonymous";
                  });
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
