import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/bloc/53_user_bloc.dart';
import 'package:flutter_chapter01/ui/53_user_card.dart';

import 'package:flutter_chapter01/model/53_user.dart';

class MainPage extends StatelessWidget {
  final Random random = Random();
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Architecture"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              bloc.add(random.nextInt(10) + 1);
              //bloc.add(2);
            },
            color: Colors.blue,
            child: Text(
              "Pick Random User",
              style: TextStyle(color: Colors.white),
            ),
          ),
          BlocBuilder<UserBloc, User>(
            builder: (context, user) =>
                (user is UninitializedUser) ? Container() : UserCard(user),
          )
        ],
      ),
    );
  }
}
