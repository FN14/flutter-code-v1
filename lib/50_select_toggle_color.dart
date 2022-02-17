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
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Selectable Text, Toggle, Color"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  "This is Selectable",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  showCursor: true,
                  cursorWidth: 3,
                  cursorColor: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                ToggleButtons(
                  isSelected: isSelected,
                  children: [
                    Icon(Icons.access_alarm),
                    Icon(Icons.adb),
                    Icon(Icons.add_comment),
                  ],
                  onPressed: (index) {
                    setState(() {
                      if (index == 0) {
                        colorFilter =
                            ColorFilter.mode(Colors.blue, BlendMode.screen);
                      } else if (index == 1) {
                        colorFilter =
                            ColorFilter.mode(Colors.green, BlendMode.softLight);
                      } else {
                        colorFilter =
                            ColorFilter.mode(Colors.purple, BlendMode.multiply);
                      }
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = (i == index) ? true : false;
                      }
                      //isSelected[index] = !isSelected[index];
                    });
                  },
                  fillColor: Colors.red[50],
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
