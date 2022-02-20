import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/54_counter_bloc.dart';
import 'package:flutter_chapter01/ui/54_second_page.dart';
import 'package:flutter_chapter01/ui/54_draft_page.dart';

import 'package:flutter_chapter01/bloc/54_color_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => Text(
                  number.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text(
                  "Click to Change",
                  style: TextStyle(color: Colors.white),
                ),
                color: color,
                shape: StadiumBorder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
