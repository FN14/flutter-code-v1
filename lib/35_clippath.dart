import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clip Path"),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
                width: 300,
                image: NetworkImage(
                    "https://i.pinimg.com/280x280_RS/0c/54/15/0c54158af5b240f66478507a86f18898.jpg")),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height); // buat garris dari atas kebawah kebawah
    path.quadraticBezierTo(size.width / 2, size.height * 0.85, size.width,
        size.height); // buat garis dari kiri ke kanan (bagian bawah) melengkung
    path.lineTo(size.width, 0); // garis paling kanan, dari bawah ke atas
    path.close(); //
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
