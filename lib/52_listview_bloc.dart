import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chapter01/49_zproduct_card_color.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => ProductBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();
  MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF44336), title: Text("ListView Builder")),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        RaisedButton(
            color: Color(0xffF44336),
            child: Text(
              "Create Product",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              bloc.add(r.nextInt(4) + 2);
            }),
        SizedBox(
          height: 20,
        ),
        BlocBuilder<ProductBloc, List<Product>>(
          builder: (context, products) => Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (index == 0)
                          ? SizedBox(
                              width: 20,
                            )
                          : Container(),
                      ProductCard(
                        imageUrl: products[index].imageUrl,
                        name: products[index].name,
                        price: products[index].price.toString(),
                        onAddCartTap: () {},
                        onDecTap: () {},
                        onIncTap: () {},
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  );
                }),
          ),
        )
      ]),
    );
  }
}

class Product {
  String imageUrl;
  String name;
  int price;

  Product({this.imageUrl = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (int i = 0; i < event; i++) {
      products.add(Product(
          imageUrl:
              "https://sahabatnestle.co.id/sites/default/files/article_combined/d33270386c9ef2aa9151d079aafe52c0f8c69969.jpeg",
          name: "Product " + i.toString(),
          price: (i + 1) * 5000));
    }
    yield products;
  }
}
