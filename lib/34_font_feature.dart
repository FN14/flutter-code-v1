import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}
//document FontFeature
//https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Contoh 01 (Tanpa Apapun)",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Contoh 02 (Small Cap)",
                  style: TextStyle(
                      fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
                ),
                Text(
                  "Contoh 1/2 03 (Frac)",
                  style: TextStyle(fontSize: 20, fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ]),
                ),
                Text(
                  "Contoh 3 1/2 03 (Small Cap & Frac)",
                  style: TextStyle(fontSize: 20, fontFeatures: [
                    FontFeature.enable("smcp"),
                    FontFeature.enable("frac")
                  ]),
                ),
                Text(
                  "Milonga 3 1/2 03 (Small Cap & Frac)",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Milonga",
                      fontFeatures: [
                        FontFeature.enable("smcp"),
                        FontFeature.enable("frac")
                      ]),
                ),
                Text(
                  "Contoh Cardo (Tanpa Apapun)",
                  style: TextStyle(fontSize: 20, fontFamily: "Cardo"),
                ),
                Text(
                  "Contoh Cardo (Dengan Oldstyle)",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Cardo",
                      fontFeatures: [FontFeature.oldstyleFigures()]),
                ),
                Text(
                  "Gabriola (Default)",
                  style: TextStyle(fontSize: 20, fontFamily: "Gabriola"),
                ),
                Text(
                  "Gabriola (Style set nomor 5)",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Gabriola",
                      fontFeatures: [FontFeature.stylisticSet(5)]),
                )
              ]),
        ),
      ),
    );
  }
}
