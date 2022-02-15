import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chapter01/44_zbloc_color.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.to_amber);
                }),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  bloc.eventSink.add(ColorEvent.to_light_blue);
                })
          ],
        ),
        appBar: AppBar(
          title: Text("Bloc State Management (tanpa library)"),
        ),
        body: Center(
          child: StreamBuilder(
            stream: bloc.stateStream,
            initialData: Colors.amber,
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: Duration(microseconds: 1),
                width: 100,
                height: 100,
                color: snapshot.data,
              );
            },
          ),
        ),
      ),
    );
  }
}
