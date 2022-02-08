import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("QR Code")),
        body: Center(
          child: QrImage(
            version: 6,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(30),
            size: 300,
            data: "MuhammadFirmansyah|TangerangSelatan",
          ),
        ),
      ),
    );
  }
}
