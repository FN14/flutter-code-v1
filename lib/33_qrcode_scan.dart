import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart' as scanner;

main() {
  runApp(MyApp());
}

// failed implement

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MainPage> {
  String text = "Result QC Code";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scan QRCODE terbaru")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              /*onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },*/ // failed implement
              child: Text("Scan"),
            )
          ],
        ),
      ),
    );
  }
}
