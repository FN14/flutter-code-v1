import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/54_color_bloc.dart';
import 'package:flutter_chapter01/bloc/54_counter_bloc.dart';
import 'package:flutter_chapter01/ui/54_main_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorBloc>(create: (context) => ColorBloc()),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
