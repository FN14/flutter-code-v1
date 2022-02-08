import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      "https://www.pegipegi.com/travel/wp-content/uploads/2018/12/shutterstock_1217986393.jpg"),
                  fit: BoxFit.contain,
                  repeat: ImageRepeat.repeat,
                ),
              ),
              Container(
                  color: Colors.white,
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(5),
                  child: Image(
                    image: AssetImage("images/Administrator-icon.png"),
                    fit: BoxFit.contain,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
