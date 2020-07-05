import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded createKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(number);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Xylophone")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createKey(color: Colors.blueGrey.shade300, number: 1),
                createKey(color: Colors.blueAccent, number: 2),
                createKey(color: Colors.green, number: 3),
                createKey(color: Colors.pink, number: 4),
                createKey(color: Colors.pinkAccent, number: 5),
                createKey(color: Colors.teal, number: 6),
                createKey(color: Colors.red.shade400, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
