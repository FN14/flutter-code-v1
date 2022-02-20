import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/59_counter_bloc.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc cbloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("flutter bloc v 1.0")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                state.value.toString(),
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              );
            },
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  cbloc.add(Decrement());
                },
                child: Icon(Icons.arrow_downward),
              ),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: () {
                  cbloc.add(Increment());
                },
                child: Icon(Icons.arrow_upward),
              )
            ],
          ),
        ],
      )),
    );
  }
}
