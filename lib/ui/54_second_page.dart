import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/54_color_bloc.dart';
import 'package:flutter_chapter01/bloc/54_counter_bloc.dart';
import 'package:flutter_chapter01/ui/54_draft_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.add(number + 1);
                  },
                  child: Text(
                    number.toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPink);
                    },
                    color: Colors.pink,
                    shape: (color == Colors.pink)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                  RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toPurple);
                    },
                    color: Colors.purple,
                    shape: (color == Colors.purple)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3))
                        : CircleBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
