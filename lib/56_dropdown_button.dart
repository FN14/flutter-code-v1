import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Person selectedPerson;
  List<Person> persons = [Person("Firman"), Person("Nisa"), Person("Nadhifa")];

  List<DropdownMenuItem> generatedItems(List<Person> persons) {
    List<DropdownMenuItem> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Down Button")),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(20),
          child: DropdownButton(
            isExpanded: true,
            value: selectedPerson,
            items: generatedItems(persons),
            onChanged: (item) {
              setState(() {
                selectedPerson = item;
              });
            },
          ),
        ),
        Text(
          (selectedPerson != null) ? selectedPerson.name : "Please Choose Name",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}

class Person {
  String name;

  Person(this.name);
}
