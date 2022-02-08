import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Row and Column")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Column 1"),
            const Text("Column 2"),
            const Text("Column 3"),
            Row(
              children: const [Text("Row 1"), Text("Row 2"), Text("Row 3")],
            )
          ],
        ),
      ),
    );
  }
}
