import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp()); 

class XylophoneApp extends StatelessWidget {
  // Function to play the sound
  void sound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  // Function to create the buttons
  Expanded func({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Create buttons for each note
              func(color: Colors.red, num: 1),
              SizedBox(height: 5),
              func(color: Colors.yellow, num: 2),
              SizedBox(height: 5),
              func(color: Colors.green, num: 3),
              SizedBox(height: 5),
              func(color: Colors.purple, num: 4),
              SizedBox(height: 5),
              func(color: Colors.teal, num: 5),
              SizedBox(height: 5),
              func(color: Colors.orange, num: 6),
              SizedBox(height: 5),
              func(color: Colors.blue, num: 7),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
