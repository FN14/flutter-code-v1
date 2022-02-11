import 'package:flutter/cupertino.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

// failed implement, audio playersdeprecated version of the Android embedding

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = "00:00:00";
  /*AudioPlayer audioPlayer;
  
*/
  /*_MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        durasi = event.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }*/
/*
  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Play Sound"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  // playSound(
                  // "https://drive.google.com/uc?export=download&id=1QYG_z_OhlnU6r_MKkzFQSprTekht8LeW");
                },
                child: Text("Play"),
              ),
              RaisedButton(
                onPressed: () {
                  //pauseSound();
                },
                child: Text("Pause"),
              ),
              RaisedButton(
                onPressed: () {
                  // stopSound();
                },
                child: Text("Stop"),
              ),
              RaisedButton(
                onPressed: () {
                  // resumeSound();
                },
                child: Text("Resume"),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
