import 'package:flutter/material.dart';
import 'package:flutter_chapter01/16_zsecond_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Main Page")),
        body: Center(
          child: RaisedButton(
            child: Text("Go To Second Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            },
          ),
        ));
  }
}
