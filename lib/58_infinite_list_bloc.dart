import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/58_post.dart';
import 'package:flutter_chapter01/ui/58_main_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
          create: (context) => PostBloc()..add(PostEvent()), child: MainPage()),
    );
  }
}
