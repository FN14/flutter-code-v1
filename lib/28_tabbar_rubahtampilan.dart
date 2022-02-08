import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(
          top: BorderSide(color: Colors.purple, width: 5),
        ),
      ),
      tabs: [
        Tab(icon: Icon(Icons.comment), text: "Comments"),
        Tab(icon: Icon(Icons.computer), text: "News"),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Tab Bar"),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.amber, child: myTabBar)),
            ),
            body: TabBarView(children: [
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
            ]),
          )),
    );
  }
}
