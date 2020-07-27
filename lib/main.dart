import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void playsound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded xylobeats({Color color, int bnumber}) {
    return Expanded(
        // ignore: missing_required_param
        child: FlatButton(
      color: color,
      onPressed: () {
        playsound(bnumber);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'xylophone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xylobeats(color: Colors.red, bnumber: 1),
                xylobeats(color: Colors.orange, bnumber: 2),
                xylobeats(color: Colors.yellow, bnumber: 3),
                xylobeats(color: Colors.green, bnumber: 4),
                xylobeats(color: Colors.teal, bnumber: 5),
                xylobeats(color: Colors.blue, bnumber: 6),
                xylobeats(color: Colors.purple, bnumber: 7),
              ],
            ),
          ),
        ));
  }
}
